
//Lấy danh sách tất cả các phần tử <li> trong side-nav
var sideNavItems = document.querySelectorAll('.side-nav__item');

// Lặp qua từng phần tử <li> và gắn sự kiện nhấp vào
sideNavItems.forEach(function(item) {
	item.addEventListener('click', function() {
		// Xóa lớp "active" khỏi tất cả các phần tử <li>
		sideNavItems.forEach(function(item) {
			item.classList.remove('active');
		});
		this.classList.add('active');

		localStorage.setItem('activeNavItem', this.getAttribute('href'));
	});
});

// Kiểm tra và khôi phục trạng thái "active" từ local storage sau khi tải lại trang
document.addEventListener('DOMContentLoaded', function() {
  var activeNavItem = localStorage.getItem('activeNavItem');

  if (activeNavItem) {
    var targetNavItem = document.querySelector('.side-nav__item[href="' + activeNavItem + '"]');
    if (targetNavItem) {
      targetNavItem.classList.add('active');
    }
  }
});