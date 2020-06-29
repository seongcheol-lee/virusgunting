package com.coderby.myapp.post.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coderby.myapp.comment.model.CommentVO;
import com.coderby.myapp.comment.service.ICommentService;
import com.coderby.myapp.post.model.DisLikeVO;
import com.coderby.myapp.post.model.LikeVO;
import com.coderby.myapp.post.model.PostVO;
import com.coderby.myapp.post.service.IPostService;
import com.coderby.myapp.post.service.PostService;
import com.coderby.myapp.user.model.UserVO;
import com.coderby.myapp.user.service.IUserService;
import com.coderby.myapp.user.service.UserService;

@Controller
public class PostController {

	@Autowired
	IPostService postService;
	@Autowired
	IUserService userService;
	@Autowired
	ICommentService commentService;

	@RequestMapping(value = "/post/{postId}")
	public String getPostInfo(@PathVariable int postId, Model model, HttpServletResponse response,
			HttpServletRequest request) {
		PostVO post = postService.getPostInfo(postId);

		int views = post.getPostViews();
		post.setPostContent(post.getPostContent().replace("\r\n", "<br>"));

		Cookie[] cookies = request.getCookies();
		ModelAndView view = new ModelAndView();
		// 비교하기 위해 새로운 쿠키
		Cookie viewCookie = null;
		// 쿠키가 있을 경우
		if (cookies != null && cookies.length > 0) {
			for (int i = 0; i < cookies.length; i++) {
				// Cookie의 name이 cookie + reviewNo와 일치하는 쿠키를 viewCookie에 넣어줌
				if (cookies[i].getName().equals("cookie" + postId)) {
					viewCookie = cookies[i];
				}
			}
		}
		if (post != null) {
			view.addObject("review", postId);
			// 만일 viewCookie가 null일 경우 쿠키를 생성해서 조회수 증가 로직을 처리함.
			if (viewCookie == null) {
				// 쿠키 생성(이름, 값)
				Cookie newCookie = new Cookie("cookie" + postId, "|" + postId + "|");
				// 쿠키 추가
				response.addCookie(newCookie);
				// 쿠키를 추가 시키고 조회수 증가시킴
				postService.upPostView(postId, views + 1);
				post.setPostViews(views + 1);
			}
		}

		List<CommentVO> commentList = commentService.getCommentList(postId);
		model.addAttribute("commentList", commentList);
		model.addAttribute("post", post);
		return "/post/view";
	}

	@RequestMapping(value = "/post/list")
	public String getPostList(Model model) {
		model.addAttribute("postList", postService.getPostList());
		return "/post/list";
	}

	@RequestMapping(value = "/post/list/{postDisease}")
	public String getPostListDisease(@PathVariable String postDisease, Model model) {
		model.addAttribute("postList", postService.getPostDiseaseList(postDisease));
		return "/post/list";
	}

	@RequestMapping(value = "/post/search", method = RequestMethod.GET)
	public String searchPost(String category, String text, Model model) {
		model.addAttribute("postList", postService.getPostSearchList(category, text));
		return "/post/list";
	}

	@RequestMapping(value = "/post/insert", method = RequestMethod.GET)
	public String postInsert(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserVO login = (UserVO) session.getAttribute("member");

		if (login == null) {
			return "redirect:/user/signin";
		}
		return "/post/insert";
	}

	@RequestMapping(value = "/post/insert", method = RequestMethod.POST)
	public String insertPost(PostVO post, Model model) { 
		if(post.getPostSubject().equals("자유") ) {
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
		if(post.getPostSubject().equals("자유") ) {
			post.setPostDisease("자유");
		}
		postService.updatePost(post);
		return "redirect:/post/"+ post.getPostId();
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

	@RequestMapping(value = "/post/like", method = RequestMethod.GET)
	public String likePost(LikeVO like) {

		int check = postService.checklikePost(like.getPostId(), like.getUserId());
		if (check != 1) {
			PostVO post = postService.getPostInfo(like.getPostId());
			postService.pluslikePost(post.getPostId(), post.getPostLikes() + 1);
			postService.insertlikePost(like);
		}
		return "redirect:/post/" + like.getPostId();
	}

	@RequestMapping(value = "/post/dislike", method = RequestMethod.GET)
	public String dislikePost(DisLikeVO dislike) {

		int check = postService.checkdislikePost(dislike.getPostId(), dislike.getUserId());
		if (check != 1) {
			PostVO post = postService.getPostInfo(dislike.getPostId());
			postService.plusdislikePost(post.getPostId(), post.getPostDisLikes() + 1);
			postService.insertdislikePost(dislike);
		}
		return "redirect:/post/" + dislike.getPostId();
	}

}
