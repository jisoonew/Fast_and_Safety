package mapper;

import java.util.List;

import com.fs.vo.Today_delivery_VO;

public interface memberMapper {
	public List<Today_delivery_VO> ListAjax();
	public List<Today_delivery_VO> bookList();
}
