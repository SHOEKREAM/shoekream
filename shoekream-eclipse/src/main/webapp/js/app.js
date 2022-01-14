/**
 * 
 */
 
function search()
{
	alert('검색');
}

function notifyStatusSearch()
{
	if(!isSearchTextInputed()) $('#input-clear-container').hide();
	else $('#input-clear-container').show();
}

function isSearchTextInputed()
{
	let text = $('#search-input').val();
	console.log(text);
	if(text.length > 0) return 1;
	else return 0;
}

function clearSearchText()
{
	document.getElementById('search-input').value = '';
}


function notifyNextSlide() {
    console.log('next');
}

function notifyBackSlide() {
    console.log('back');
}