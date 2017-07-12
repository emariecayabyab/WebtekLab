<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel = "stylesheet" type = "text/css "href = "css\post.css">
        <title>Post</title>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">                
                            <form accept-charset="UTF-8" action="" method="POST">
                            <div>
				<textarea class="form-control counted" name="message" placeholder="Think before you post" rows="5" style="margin-bottom:10px;"></textarea>
				     <div class="btn-toolbar" role="toolbar">
					<div class="btn-group">
                                            <div class="upload">
						<label for="file-input">
                                                    <i class="attach-doc fa fa-picture-o fa-2x" aria-hidden="true"></i>
						</label>
						<input id="file-input" type="file" accept="image/*"/> 
                                            </div>
                                            <div class="upload">
						<label for="file-input">
                                                    <i class="attach-doc fa fa-video-camera fa-2x" aria-hidden="true"></i>
						</label>
						<input id="file-input" type="file" accept="video/*"/>
                                            </div>
                                            <div class="upload">
						<label for="file-input">
                                                    <i class="attach-doc fa fa-paperclip fa-2x" aria-hidden="true"></i>
						</label>
						<input id="file-input" type="file" accept="file_extension"/>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-info" type="submit">Post</button>
                            </div>	
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
