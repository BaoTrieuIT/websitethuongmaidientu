function readURL(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap').hide();

			$('.file-upload-image').attr('src', e.target.result);
			$('.file-upload-content').show();

			$('.image-title').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload();
	}
}
$(".edit-button").on('click', function(event) {
	event.preventDefault();

	// Lấy đường dẫn ảnh từ thuộc tính src của thẻ img
	var imageUrl = $(this).closest('.file-upload-content').find('.file-upload-image').attr('src');

	// Gán đường dẫn ảnh cho trường nhập tệp tin
	$('.file-upload-input').val(imageUrl);

	// Hiển thị ảnh lên trường nhập tệp tin
	$('.image-upload-wrap').hide();
	$('.file-upload-content').show();
	$('.file-upload-image').attr('src', imageUrl);
	$('.image-title').html('');

	// Bỏ sự kiện drag and drop khi đang ở chế độ chỉnh sửa
	$('.image-upload-wrap').unbind('dragover');
	$('.image-upload-wrap').unbind('dragleave');
});
function removeUpload() {
	$('.file-upload-input').replaceWith($('.file-upload-input').clone());
	$('.file-upload-content').hide();
	$('.image-upload-wrap').show();
}
$('.image-upload-wrap').bind('dragover', function() {
	$('.image-upload-wrap').addClass('image-dropping');
});
$('.image-upload-wrap').bind('dragleave', function() {
	$('.image-upload-wrap').removeClass('image-dropping');
});

$(document).ready(function() {


	var readURL = function(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('.avatar').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}


	$(".file-upload").on('change', function() {
		readURL(this);
	});
});