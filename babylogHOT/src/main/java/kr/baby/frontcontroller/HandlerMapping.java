package kr.baby.frontcontroller;


import java.util.HashMap;

import kr.baby.controller.CommunityDetailController;
import kr.baby.controller.CommunityEditController;
import kr.baby.controller.CommunityFreeController;
import kr.baby.controller.CommunityInfoController;
import kr.baby.controller.CommunityTradeController;
import kr.baby.controller.CommunityWriteController;
import kr.baby.controller.Controller;
import kr.baby.controller.DiaryController;
import kr.baby.controller.LoginController;
import kr.baby.controller.MainController;
import kr.baby.controller.MypageController;
import kr.baby.controller.NewsCityController;
import kr.baby.controller.NewsDetailController;
import kr.baby.controller.NewsGovController;
import kr.baby.controller.ShopAlbumController;
import kr.baby.controller.ShopController;
import kr.baby.controller.ShopDiaryController;


	public class HandlerMapping{
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String,Controller>();

		mappings.put("/main.do",new MainController());
		mappings.put("/login.do",new LoginController());
		mappings.put("/communityFree.do",new CommunityFreeController());
		mappings.put("/communityDetail.do",new CommunityDetailController());
		mappings.put("/communityEdit.do",new CommunityEditController());
		mappings.put("/communityInfo.do",new CommunityInfoController());
		mappings.put("/communityTrade.do",new CommunityTradeController());
		mappings.put("/communityWrite.do",new CommunityWriteController());
		mappings.put("/diary.do",new DiaryController());
		mappings.put("/mypage.do",new MypageController());
		mappings.put("/newsCity.do",new NewsCityController());
		mappings.put("/newsGov.do",new NewsGovController());
		mappings.put("/newsDetail.do",new NewsDetailController());
		mappings.put("/shop.do",new ShopController());
		mappings.put("/shopAlbum.do",new ShopAlbumController());
		mappings.put("/shopDiary.do",new ShopDiaryController());
		
		
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
	
	
	

	
}
