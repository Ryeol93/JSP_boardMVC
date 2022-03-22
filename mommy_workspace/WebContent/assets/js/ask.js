
//서치박스 이벤트 ask
		const searchBtn = document.querySelector(".search-btn");
        const cancelBtn = document.querySelector(".cancel-btn");
        const searchBox = document.querySelector(".search-box");
        searchBtn.onclick = () => {
        searchBox.classList.add("active");
        }
        cancelBtn.onclick = () => {
        searchBox.classList.remove("active");
        }
        

        
