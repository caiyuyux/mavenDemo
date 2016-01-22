/***************************/
//@Author: Adrian "yEnS" Mato Gondelle & Ivan Guardado Castro
//@website: www.yensdesign.com
//@email: yensamg@gmail.com
//@license: Feel free to use it, but keep this credits please!					
/***************************/

$(document).ready(function(){
	//global vars
	var tmp;

	var form = $("#customForm");
	var nameInfo = $("#nameInfo");
	var type = $("#type");
	var typeInfo = $("#typeInfo");
	var source = $("#source");
	var sourceInfo = $("#sourceInfo");
	var place = $("#place");
	var placeInfo = $("#placeInfo");
	var reporter = $("#reporter");
	var reporterInfo = $("#reporterInfo");
	var editor = $("#editor");
	var editorInfo = $("#editorInfo");
	var content = $("#content");
	var contentInfo = $("#contentInfo");
	var title = $("#title");
	var titleInfo = $("#titleInfo");
	
	//On blur
	type.blur(validateType);
	source.blur(validateSource);
	place.blur(validatePlace);
	reporter.blur(validateReporter);
	editor.blur(validateEditor);
	content.blur(validateContent);
	title.blur(validateTitle);

	//On key press
	type.keyup(validateType);
	source.keyup(validateSource);
	place.keyup(validatePlace);
	reporter.keyup(validateReporter);
	editor.keyup(validateEditor);
	content.keyup(validateContent);
	title.keyup(validateTitle);

	//On Submitting
	form.submit(function(){

		if(validateType() & validateSource() & validatePlace()
            & validateReporter() & validateEditor()
            & validateContent() & validateTitle())
			return true
		else
			return false;

	});

	//validation functions
	function validateType(){
		var a = $("#type").val();
		if(a.length < 1){
            type.addClass("error");
            typeInfo.text("不能为空");
            typeInfo.addClass("error");
			return false;
		}
		else{
            type.removeClass("error");
            typeInfo.text("符合");
            typeInfo.removeClass("error");
            return true;
		}
	}

    function validateSource(){
        var a = $("#source").val();
        if(a.length < 1){
            source.addClass("error");
            sourceInfo.text("不能为空");
            sourceInfo.addClass("error");
            return false;
        }
        else{
            source.removeClass("error");
            sourceInfo.text("符合");
            sourceInfo.removeClass("error");
            return true;
        }
    }

    function validatePlace(){
        var a = $("#place").val();
        if(a.length < 1){
            place.addClass("error");
            placeInfo.text("不能为空");
            placeInfo.addClass("error");
            return false;
        }
        else{
            place.removeClass("error");
            placeInfo.text("符合");
            placeInfo.removeClass("error");
            return true;
        }
    }

    function validateReporter(){
        var a = $("#reporter").val();
        if(a.length < 1){
            reporter.addClass("error");
            reporterInfo.text("不能为空");
            reporterInfo.addClass("error");
            return false;
        }
        else{
            reporter.removeClass("error");
            reporterInfo.text("符合");
            reporterInfo.removeClass("error");
            return true;
        }
    }

    function validateEditor(){
        var a = $("#editor").val();
        if(a.length < 1){
            editor.addClass("error");
            editorInfo.text("不能为空");
            editorInfo.addClass("error");
            return false;
        }
        else{
            editor.removeClass("error");
            editorInfo.text("符合");
            editorInfo.removeClass("error");
            return true;
        }
    }

    function validateContent(){
        var a = $("#content").val();
        if(a.length < 1){
            content.addClass("error");
            contentInfo.text("不能为空");
            contentInfo.addClass("error");
            return false;
        }
        else{
            content.removeClass("error");
            contentInfo.text("符合");
            contentInfo.removeClass("error");
            return true;
        }
    }

    function validateTitle(){
        var a = $("#title").val();
        if(a.length < 1){
            title.addClass("error");
            titleInfo.text("不能为空");
            titleInfo.addClass("error");
            return false;
        }
        else{
            title.removeClass("error");
            titleInfo.text("符合");
            titleInfo.removeClass("error");
            return true;
        }
    }
});