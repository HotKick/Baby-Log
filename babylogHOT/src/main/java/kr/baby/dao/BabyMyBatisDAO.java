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
			CommunityVO vo = session.selectOne("detailFree",community_seq);
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
			public void insertInfo(CommunityVO vo) {
				SqlSession session = sqlSessionFactory.openSession();
				session.insert("insertInfo",vo);
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
	public List<TradeVO> listTrade(){
	    SqlSession session = sqlSessionFactory.openSession();
	    List<TradeVO> list = session.selectList("listTrade");
	    session.close();
	    return list;
	}
	
				// 거래게시판 글쓰기 메소드
				public void insertTrade(TradeVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.insert("insertTrade",vo);
					session.commit();
					session.close();
				}
				
				// 거래게시판 상세보기 메소드
				public TradeVO detailTrade(int trade_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					TradeVO vo = session.selectOne("detailTrade",trade_seq);
					session.close();
					return vo;
				}
				
				// 거래게시판 조회수 증가 메소드
				public void countTrade(int trade_cnt) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("countTrade",trade_cnt);
					session.commit();
					session.close();
				}
				
				// 거래게시판 수정 메소드
				public void updateTrade(TradeVO vo) {
					SqlSession session = sqlSessionFactory.openSession();
					session.update("updateTrade",vo);
					session.commit();
					session.close();
				}
				
				// 거래게시판 삭제 메소드
				public void deleteTrade(int trade_seq) {
					SqlSession session = sqlSessionFactory.openSession();
					session.delete("deleteTrade",trade_seq);
					session.commit();
					session.close();
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
	
	
	

//	public void Update(MemberVO vo) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.update("Update", vo);
//		session.commit();
//		session.close();
//
//	}
//
//
//	// 로그인
//	public MemberVO memberLogin(MemberVO vo) {
//		SqlSession session = sqlSessionFactory.openSession();
//		MemberVO mvo = session.selectOne("memberLogin", vo);
//		session.close();
//		return mvo;
//	}

	
	
	

	
	
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
