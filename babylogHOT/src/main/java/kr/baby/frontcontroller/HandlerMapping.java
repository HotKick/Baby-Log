package kr.baby.frontcontroller;


import java.util.HashMap;

import kr.baby.controller.CommunityDeleteController;
import kr.baby.controller.CommunityDetailController;
import kr.baby.controller.CommunityEditController;
import kr.baby.controller.CommunityEditFormController;
import kr.baby.controller.CommunityFreeController;
import kr.baby.controller.CommunityInfoController;
import kr.baby.controller.CommunityTradeController;
import kr.baby.controller.CommunityWriteController;
import kr.baby.controller.CommunityWriteFormController;
import kr.baby.controller.Controller;
import kr.baby.controller.DiaryCommentController;
import kr.baby.controller.DiaryCommentDeleteController;
import kr.baby.controller.DiaryCommentUpdateController;
import kr.baby.controller.DiaryController;
import kr.baby.controller.DiaryDeleteController;
import kr.baby.controller.DiaryDetailController;
import kr.baby.controller.DiaryEditController;
import kr.baby.controller.DiaryEditFormController;
import kr.baby.controller.DiaryWriteController;
import kr.baby.controller.DiaryWriteFormController;
import kr.baby.controller.KakaoLoginController;
import kr.baby.controller.LoginController;
import kr.baby.controller.LoginFormController;
import kr.baby.controller.LogoutController;
import kr.baby.controller.MainController;
import kr.baby.controller.MypageController;
import kr.baby.controller.NewsCityController;
import kr.baby.controller.NewsDetailController;
import kr.baby.controller.NewsGovController;
import kr.baby.controller.QuestionController;
import kr.baby.controller.QuestionDetailController;
import kr.baby.controller.QuestionEditController;
import kr.baby.controller.QuestionEditFormController;
import kr.baby.controller.QuestionWriteController;
import kr.baby.controller.QuestionWriteFormController;
import kr.baby.controller.ShopAlbumController;
import kr.baby.controller.ShopController;
import kr.baby.controller.ShopDiaryController;

import kr.baby.controller.ShopSelectController;
import kr.baby.controller.SignupController;
import kr.baby.controller.SignupFormController;
import kr.baby.controller.UpdateProfController;


	public class HandlerMapping{
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String,Controller>();

		mappings.put("/main.do",new MainController());
		mappings.put("/login.do",new LoginController());
		mappings.put("/loginform.do", new LoginFormController());
		mappings.put("/logout.do", new LogoutController());
		mappings.put("/kakaologin.do",new KakaoLoginController());
		mappings.put("/communityFree.do",new CommunityFreeController());
		mappings.put("/communityDetail.do",new CommunityDetailController());
		mappings.put("/communityEdit.do",new CommunityEditController());
		mappings.put("/communityEditForm.do",new CommunityEditFormController());
		mappings.put("/communityInfo.do",new CommunityInfoController());
		mappings.put("/communityTrade.do",new CommunityTradeController());
		mappings.put("/communityWrite.do",new CommunityWriteController());
		mappings.put("/communityWriteForm.do",new CommunityWriteFormController());
		mappings.put("/communityDelete.do",new CommunityDeleteController());
		mappings.put("/diary.do",new DiaryController());
		mappings.put("/diaryDetail.do",new DiaryDetailController());
		mappings.put("/diaryWrite.do",new DiaryWriteController());
		mappings.put("/diaryWriteForm.do",new DiaryWriteFormController());
		mappings.put("/diaryEdit.do",new DiaryEditController());
		mappings.put("/diaryEditForm.do",new DiaryEditFormController());
		mappings.put("/diaryDelete.do",new DiaryDeleteController());
		mappings.put("/diaryComment.do",new DiaryCommentController());
		mappings.put("/diaryCommentDelete.do",new DiaryCommentDeleteController());
		mappings.put("/diaryCommentUpdate.do",new DiaryCommentUpdateController());
		mappings.put("/mypage.do",new MypageController());
		mappings.put("/updateprof.do", new UpdateProfController());
		mappings.put("/newsCity.do",new NewsCityController());
		mappings.put("/newsGov.do",new NewsGovController());
		mappings.put("/newsDetail.do",new NewsDetailController());
		mappings.put("/shop.do",new ShopController());
		mappings.put("/shopAlbum.do",new ShopAlbumController());
		mappings.put("/shopDiary.do",new ShopDiaryController());
		mappings.put("/shopSelect.do",new ShopSelectController());
		mappings.put("/signupform.do", new SignupFormController());
		mappings.put("/signup.do",new SignupController());
		mappings.put("/question.do",new QuestionController());
		mappings.put("/questionWrite.do",new QuestionWriteController());
		mappings.put("/questionWriteForm.do",new QuestionWriteFormController());
		mappings.put("/questionDetail.do",new QuestionDetailController());
		mappings.put("/questionEdit.do",new QuestionEditController());
		mappings.put("/questionEditForm.do",new QuestionEditFormController());
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
	
	
	

	
}
