<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
         <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
        <link rel = "stylesheet" type = "text/css "href = "css\post.css">
        <title>Post</title>
    <body>
        <div class="container">
            <div class="row">
		<h3>Post</h3>
            </div>
            <div class="row"> 
                <div class="col-md-6">
                    <div class="widget-area no-padding blank">
			<div class="status-upload">
                            <form>
                                <textarea placeholder="Think before you post..." ></textarea>
                                <ul>
                                    <div class="upload">
                                        <label for="image-input">
                                            <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Picture"><i class="fa fa-picture-o fa-2x" aria-hidden="true"></i></a></li>
                                        </label>
                                        <input id="image-input" type="file" accept="image/*"/>
                                    </div>
                                    <div class="upload">
                                        <label for="video-input">
                                            <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Video"><i class="fa fa-video-camera fa-2x" aria-hidden="true"></i></a></li>
                                        </label>
                                        <input id="video-input" type="file" accept="video/*"/>
                                    </div>
                                    <div class="upload">
                                        <label for="file-input">
                                            <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="File"><i class="fa fa-paperclip fa-2x" aria-hidden="true"></i></a></li>
                                        </label>
                                        <input id="file-input" type="file" accept="file_extension"/>
                                    </div>
                                </ul>
                                <button type="submit" class="btn btn-primary"><i class="fa fa-share"></i>Post</button>
                            </form>
			</div><!-- Status Upload  -->
                    </div><!-- Widget Area -->
		</div><!-- class="col-md-6" -->    
            </div><!-- class="row" -->
        </div>
    </body>
</html>
