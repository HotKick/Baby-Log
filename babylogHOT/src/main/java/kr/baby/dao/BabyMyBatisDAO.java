package kr.baby.dao;
// MyBatis : Java <--> SQL :분리개발

// 성능개선(프로그램의 처리속도 개선의 목적) : Connection POOL 기법
// SQL Mapping Framework

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class BabyMyBatisDAO {
	private static SqlSessionFactory sqlSessionFactory;
	// database연결 >> config.xml과 MyBatis API연결
	// 초기화 블럭
	static {
		try {
			String resource = "kr/baby/dao/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	// 회원가입
	public void signup(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("signup", vo); // >> 인서트를 메서드 이름으로
		session.commit(); // 인서트는 commit 필수임
		session.close();
	}
	
	// 로그인 메소드
	
	public MemberVO memberLogin(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO mvo = session.selectOne("memberLogin", vo);
		session.close();
		return mvo;
	}
	
	// 뉴스 전체 리스트 가져오기
	public List<NewsVO> listNews(){
		SqlSession session = sqlSessionFactory.openSession();
		List<NewsVO> list = session.selectList("listNews");
		session.close();
		return list;
	}
	
	// 뉴스 게시판 글쓰기 메소드
	public void insertNews(NewsVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("insertNews",vo);
		session.commit();
		session.close();
	}
	
	// 뉴스 게시판 상세보기 메소드
	public NewsVO detailNews(int nn_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		NewsVO vo = session.selectOne("detailNews",nn_seq);
		session.close();
		return vo;
	}
	
	// 뉴스 게시판 조회수 증가 메소드
	public void countNews(int nn_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("countnews",nn_seq);
		session.commit();
		session.close();
	}
	
	// 뉴스 게시판 수정 메소드
	public void updateNews(NewsVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("updateNews",vo);
		session.commit();
		session.close();
	}
	
	// 뉴스 게시판 삭제 메소드
	public void deleteNews(int nn_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		session.delete("deleteNews",nn_seq);
		session.commit();
		session.close();
	}
	

	// 자유게시판 전체 리스트 가져오기
	public List<CommunityVO> listFree(){
	    SqlSession session = sqlSessionFactory.openSession();
	    List<CommunityVO> list = session.selectList("listFree");
	    session.close();
	    return list;
	}
	
	// 자유게시판 글 번호로 가져오기
	public CommunityVO getCommunity_seq(int community_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		CommunityVO vo = session.selectOne("getCommunity_seq",community_seq);
		session.close();
		return vo;
	}
	
	// 자유게시판 글쓰기 메소드
		public void insertFree(CommunityVO vo) {
			SqlSession session = sqlSessionFactory.openSession();
			session.insert("insertFree",vo);
			session.commit();
			session.close();
		}
		
		// 자유게시판 상세보기 메소드
		public CommunityVO detailFree(int community_seq) {
			SqlSession session = sqlSessionFactory.openSession();
			CommunityVO vo = session.selectOne("getCommunity_seq",community_seq);
			session.close();
			return vo;
		}
		
		// 자유게시판 조회수 증가 메소드
		public void countFree(int community_seq) {
			SqlSession session = sqlSessionFactory.openSession();
			session.update("countFree",community_seq);
			session.commit();
			session.close();
		}
		
		// 자유게시판 수정 메소드
		public void updateFree(CommunityVO vo) {
			SqlSession session = sqlSessionFactory.openSession();
			session.update("updateFree",vo);
			session.commit();
			session.close();
		}
		
		// 자유게시판 삭제 메소드
		public void deleteFree(int community_seq) {
			SqlSession session = sqlSessionFactory.openSession();
			session.delete("deleteFree",community_seq);
			session.commit();
			session.close();
		}
	
	// 정보게시판 전체 리스트 가져오기
	public List<CommunityVO> listInfo(){
	    SqlSession session = sqlSessionFactory.openSession();
	    List<CommunityVO> list = session.selectList("listInfo");
	    session.close();
	    return list;
	}
	
	// 정보게시판 글쓰기 메소드
			public void insertInfo(CommunityVO vo1) {
				SqlSession session = sqlSessionFactory.openSession();
				session.insert("insertInfo",vo1);
				session.commit();
				session.close();
			}
			
			// 정보게시판 상세보기 메소드
			public CommunityVO detailInfo(int community_seq) {
				SqlSession session = sqlSessionFactory.openSession();
				CommunityVO vo = session.selectOne("detailInfo",community_seq);
				session.close();
				return vo;
			}
			
			// 정보게시판 조회수 증가 메소드
			public void countInfo(int community_cnt) {
				SqlSession session = sqlSessionFactory.openSession();
				session.update("countInfo",community_cnt);
				session.commit();
				session.close();
			}
			
			// 정보게시판 수정 메소드
			public void updateInfo(CommunityVO vo) {
				SqlSession session = sqlSessionFactory.openSession();
				session.update("updateInfo",vo);
				session.commit();
				session.close();
			}
			
			// 정보게시판 삭제 메소드
			public void deleteInfo(int community_seq) {
				SqlSession session = sqlSessionFactory.openSession();
				session.delete("deleteInfo",community_seq);
				session.commit();
				session.close();
			}
		
	
	// 거래게시판 전체 리스트 가져오기
	public List<CommunityVO> listTrade(){
	    SqlSession session = sqlSessionFactory.openSession();
	    List<CommunityVO> list = session.selectList("listTrade");
	    session.close();
	    return list;
	}
	
				// 거래게시판 글쓰기 메소드
				public void insertTrade(CommunityVO vo2) {
					SqlSession session = sqlSessionFactory.openSession();
					session.insert("insertTrade",vo2);
					session.commit();
					session.close();
				}
				
				// 거래게시판 상세보기 메소드
				public CommunityVO detailTrade(int Community_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					CommunityVO vo = session.selectOne("detailCommunity",Community_seq);
					session.close();
					return vo;
				}
				
				// 거래게시판 조회수 증가 메소드
				public void countTrade(int Community_cnt) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("countCommunity",Community_cnt);
					session.commit();
					session.close();
				}
				
				// 거래게시판 수정 메소드
				public void updateTrade(CommunityVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("updateCommunity",vo);
					session.commit();
					session.close();
				}
				
				// 거래게시판 삭제 메소드
				public void deleteTrade(int community_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					session.delete("deleteCommunity",community_seq);
					session.commit();
					session.close();
				}
			
				// 일기 전체 리스트 조회 
				public List<DiaryVO> listDiary(){
				    SqlSession session = sqlSessionFactory.openSession();
				    List<DiaryVO> list = session.selectList("listDiary");
				    session.close();
				    return list;
				}
				
				// 일기 글쓰기 
				public void insertDiary(DiaryVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.insert("insertDiary",vo);
					session.commit();
					session.close();
				}
				
				// 일기게시판 글 번호로 가져오기
				public DiaryVO getDiary_seq(int diary_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					DiaryVO vo = session.selectOne("getDiary_seq",diary_seq);
					session.close();
					return vo;
				}
				
				// 일기게시판 수정 메소드
				public void updateDiary(DiaryVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("updateDiary",vo);
					session.commit();
					session.close();
				}
				
				// 일기게시판 조회수 증가 메소드
				public void countDiary(int diary_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("countDiary",diary_seq);
					session.commit();
					session.close();
				}
				
				// 일기 게시판 삭제 메소드 
				public void deleteDiary(int diary_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					session.delete("deleteDiary",diary_seq);
					session.commit();
					session.close();
				}
				
				// 일기 게시판 댓글 쓰기 메소드
				public void insertDiaryComment(DiaryCommentVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.insert("insertDiaryComment",vo);
					session.commit();
					session.close();
				}
				
				// 일기 댓글 전체 보기 메소드
				public List<DiaryCommentVO> ListDiaryComment(){
					SqlSession session = sqlSessionFactory.openSession();
					List<DiaryCommentVO> list =session.selectList("ListDiaryComment");
					session.close();
					return list;
				}
				
				// 일기 댓글 삭제 메소드
				public void deleteDiaryComment(int diary_cmt_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					int vo = session.delete("deleteDiaryComment", diary_cmt_seq);
					session.commit();
					session.close();
				}
				
				
				//일기 댓글 수정 메소드
				public void updateDiaryComment(DiaryCommentVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("updateDiaryComment",vo);
					session.commit();
					session.close();
		
				}
				
				// 일기 댓글 번호 가져오기 메소드
				public DiaryCommentVO getDiary_cmt_seq(int diary_cmt_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					DiaryCommentVO vo = session.selectOne("getDiary_cmt_seq",diary_cmt_seq);
					session.close();
					return vo;
				}
				
				

	
				// 질문 전체 리스트 조회 
				public List<QuestionVO> listQuestion(){
				    SqlSession session = sqlSessionFactory.openSession();
				    List<QuestionVO> list = session.selectList("listQuestion");
				    session.close();
				    return list;
				}
				
				// 질문 글쓰기 
				public void insertQuestion(QuestionVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.insert("insertQuestion",vo);
					session.commit();
					session.close();
				}
				
				// 질문 게시판 글 번호로 가져오기
				public QuestionVO getQ_seq(int q_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					QuestionVO vo = session.selectOne("getQ_seq",q_seq);
					session.close();
					return vo;
				}
				
				// 질문 게시판 수정 메소드
				public void updateQuestion(QuestionVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("updateQuestiobn",vo);
					session.commit();
					session.close();
				}
				
				// 질문 게시판 조회수 증가 메소드
				public void countQuestion(int q_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("countQuestion",q_seq);
					session.commit();
					session.close();
				}
				
				// 안드로이드 로그인 메소드 
				public MemberVO Login(MemberVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					MemberVO mvo = session.selectOne("Login", vo);
					session.close();
					return mvo;
				}
	

//	public void Update(MemberVO vo) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.update("Update", vo);
//		session.commit();
//		session.close();
//
//	}
//
//

	
	
	

	
	
	// 숙소 정보 10개 가져오기(배열) 미완성
//	public List<TempStayVO> TempstayList_main() {
//		SqlSession session = sqlSessionFactory.openSession();
//		List<TempStayVO> stay_vo_list = session.selectList("stayList_main");
//		session.close();
//		return stay_vo_list;
//	}

	// 1) 전체 리스트 가져오기
//	public List<BoardVO> allList() {
//		SqlSession session = sqlSessionFactory.openSession();
//		// select * from board order by idx desc
//		List<BoardVO> list = session.selectList("allList");
//		session.close(); // 세션 반납 !반드시 close()해야 오류가 안난다 
//		return list;
//	}
	


	// 2) 인서트 기능 가져오기
//	public void boardInsert(BoardVO vo) {
//		// 커넥션 꺼내오기 > 사용하고 있지 않은 커넥션 꺼내오기 
//		SqlSession session = sqlSessionFactory.openSession();
//		session.insert("boardInsert", vo); // >> 인서트를 메서드 이름으로
//		session.commit(); //인서트는 commit 필수임 
//		session.close();
//		
//	}

	// 3) 상세보기 가져오기
//	public BoardVO getByIdx(int idx) {
//		// 커넥션 꺼내오기 > 사용하고 있지 않은 커넥션 꺼내오기 
//		SqlSession session = sqlSessionFactory.openSession();
//		BoardVO vo =session.selectOne("getByIdx",idx);
//		session.close();
//		return vo;
//		
//	}

	// 4) 카운트 업데이트(조회수 올리기)
//	public void countUpdate(int idx) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.update("countUpdate",idx);
//		session.commit();
//		session.close();
//	}
//	
	// 5) 삭제하기

//	public void boardDelete(int idx) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.delete("boardDelete",idx);
//		session.commit();
//		session.close();
//		
//	}

	// 6) 수정하기

//	public void boardUpdate(BoardVO vo) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.update("boardUpdate",vo);
//		session.commit();
//		session.close();
//	}
//	

}
