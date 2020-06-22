<!DOCTYPE html>
<html lang="en">

<head>
    <title>CSS Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>

    </style>
</head>

<body>


    <p> </p>

    <header>
        <h2> 야관문</h2>
    </header>



    <section id="head">
        <nav>
            <h1>치질 자가진단</h1>
        </nav>

        <article>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">증상</th>
                        <th scope="col">여부</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>변비가 있다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="cjT1" id="q1" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cjT1" id="q1" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>변을 누면 선홍색 피가 난다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="cjT2" id="q2" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cjT2" id="q2" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                        
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>항문 주변이 가렵다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="cjT3" id="q3" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cjT3" id="q3" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td>변을 눌때 아프다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="cjT4" id="q4" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cjT4" id="q4" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                    </tr>
                    <tr>
                        <th scope="row">5</th>
                        <td>항문 주변에 덩어리가 만져진다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="cjT5" id="q5" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cjT5" id="q5" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                    </tr>
                    <tr>
                        <th scope="row">6</th>
                        <td>과음 후 배변시 출혈이 발생한다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="cjT6" id="q6" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cjT6" id="q6" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                    </tr>
                </tbody>
            </table>           
        </article>
    </section>

    <button type="button" class="btn btn-outline-secondary">결과보기</button>

</body>

</html>