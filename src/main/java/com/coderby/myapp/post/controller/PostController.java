package com.coderby.myapp.post.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coderby.myapp.comment.model.CommentVO;
import com.coderby.myapp.comment.service.ICommentService;
import com.coderby.myapp.post.model.DisLikeVO;
import com.coderby.myapp.post.model.LikeVO;
import com.coderby.myapp.post.model.PagingVO;
import com.coderby.myapp.post.model.PostVO;
import com.coderby.myapp.post.service.IPostService;
import com.coderby.myapp.user.model.UserVO;
import com.coderby.myapp.user.service.IUserService;

@Controller
public class PostController {

	@Autowired
	IPostService postService;
	@Autowired
	IUserService userService;
	@Autowired
	ICommentService commentService;

	@RequestMapping(value = "/post/list")
	public String getPostList(PagingVO vo, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {

		int total = postService.getPostCount();

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<PostVO> postList = postService.getPostPage(vo);

		for (PostVO post : postList) {
			int postId = post.getPostId();
			post.setCommentCount(postService.getCommentCount(postId));
		}

		model.addAttribute("paging", vo);
		model.addAttribute("postList", postList);

		return "/post/list";
	}

	@RequestMapping(value = "/post/{postId}")
	public String getPostInfo(@PathVariable int postId, HttpServletResponse response, HttpServletRequest request,
			HttpServletRequest req, PagingVO vo, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {

		PostVO post = postService.getPostInfo(postId);
		HttpSession session = req.getSession();

//		게시글 처리
		post.setPostContent(post.getPostContent().replace("\r\n", "<br>"));

		model.addAttribute("post", post);

//		댓글 페이징 처리
		int total = postService.getCommentCount(postId);

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),5);
		
		List<CommentVO> commentList = commentService.getCommentPage(vo.getStart(), vo.getEnd(), postId);

		for (CommentVO comment : commentList) {
			comment.setCommentContent(comment.getCommentContent().replace("\r\n", "<br>"));
		}

		model.addAttribute("paging", vo);
		model.addAttribute("commentList", commentList);

//		좋아요 싫어요 처리
		UserVO user = (UserVO) session.getAttribute("member");
		int like_check, dislike_check;
		if (user != null) {
			like_check = postService.checklikePost(postId, user.getUserId());
			dislike_check = postService.checkdislikePost(postId, user.getUserId());
			model.addAttribute("like_check", like_check);
			model.addAttribute("dislike_check", dislike_check);
		}

		return "/post/view";
	}

	
	@RequestMapping(value = "/post/list/{postDisease}")
	public String getPostListDisease(@PathVariable String postDisease, PagingVO vo, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {
		
//		model.addAttribute("postList", postService.getPostDiseaseList(postDisease));
		
		int total = postService.getPostDiseaseCount(postDisease);

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<PostVO> postList = postService.getPostDiseasePage(vo,postDisease);

		for (PostVO post : postList) {
			int postId = post.getPostId();
			post.setCommentCount(postService.getCommentCount(postId));
		}
		
		model.addAttribute("postDisease", postDisease);
		model.addAttribute("paging", vo);
		model.addAttribute("postList", postList);
		
		return "/post/list";
		
	}

	@RequestMapping(value = "/post/search", method = RequestMethod.GET)
	public String searchPost(String category, String text, Model model) {
		model.addAttribute("postList", postService.getPostSearchList(category, text));
		return "/post/list";
	}

	@RequestMapping(value = "/post/insert", method = RequestMethod.GET)
	public String postInsert(Model model, HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		UserVO login = (UserVO) session.getAttribute("member");

		if (login == null) {
			rttr.addFlashAttribute("msg", "loginplease");
			return "redirect:/user/signin";
		}
		return "/post/insert";
	}

	@RequestMapping(value = "/post/insert", method = RequestMethod.POST)
	public String insertPost(PostVO post, Model model) {
		if (post.getPostSubject().equals("자유")) {
			post.setPostDisease("자유");
		}
		postService.insertPost(post);
		return "redirect:/post/list";
	}

	@RequestMapping(value = "/post/update/{postId}", method = RequestMethod.GET)
	public String updatePost(@PathVariable int postId, Model model) {
		PostVO post = postService.getPostInfo(postId);
		model.addAttribute("post", post);
		model.addAttribute("user", userService.getUserInfo(post.getUserId()));
		return "/post/update";
	}

	@RequestMapping(value = "/post/update", method = RequestMethod.POST)
	public String updatePost(PostVO post, Model model) {
		if (post.getPostSubject().equals("자유")) {
			post.setPostDisease("자유");
		}
		postService.updatePost(post);
		return "redirect:/post/" + post.getPostId();
	}

	@RequestMapping(value = "/post/responded/{postId}", method = RequestMethod.POST)
	public String respondedPost(@PathVariable int postId, Model model) {
		PostVO post = postService.getPostInfo(postId);
		postService.respondedPost(post);
		return "redirect:/post/" + postId;
	}

	@RequestMapping(value = "/post/delete/{postid}", method = RequestMethod.POST)
	public String deletePost(@PathVariable int postid, Model model) {
		postService.deletePost(postid);
		return "redirect:/post/list";
	}

	@ResponseBody
	@RequestMapping(value = "/post/like", method = RequestMethod.GET)
	public String likePost(LikeVO like) {

		int check = postService.checklikePost(like.getPostId(), like.getUserId());
		PostVO post = postService.getPostInfo(like.getPostId());
		int like_count = post.getPostLikes();

		if (check != 1) {
			check = 1;
			like_count++;
			postService.changelikePost(post.getPostId(), like_count);
			postService.insertlikePost(like);
		} else {
			check = 0;
			like_count--;
			postService.changelikePost(post.getPostId(), like_count);
			postService.deletelikePost(like);
		}

		JSONObject obj = new JSONObject();
		obj.put("like_count", like_count);
		obj.put("check", check);

		return obj.toJSONString();

	}

	@ResponseBody
	@RequestMapping(value = "/post/dislike", method = RequestMethod.GET)
	public String dislikePost(DisLikeVO dislike) {
		int check = postService.checkdislikePost(dislike.getPostId(), dislike.getUserId());
		PostVO post = postService.getPostInfo(dislike.getPostId());
		int dislike_count = post.getPostDisLikes();

		if (check != 1) {
			check = 1;
			dislike_count++;
			postService.changedislikePost(post.getPostId(), dislike_count);
			postService.insertdislikePost(dislike);
		} else {
			check = 0;
			dislike_count--;
			postService.changedislikePost(post.getPostId(), dislike_count);
			postService.deletedislikePost(dislike);
		}

		JSONObject obj = new JSONObject();
		obj.put("dislike_count", dislike_count);
		obj.put("check", check);

		return obj.toJSONString();
	}

}
