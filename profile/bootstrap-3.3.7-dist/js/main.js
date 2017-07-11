function rename(e) {
	console.log(e.target);
}

renameButton = document.querySelector('#rename_button');
renameButton.addEventListener('click', rename);