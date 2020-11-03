package auction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * auction ���� ������ �����Ű�� ���� ��Ʈ�ѷ�
 * @Controller�� ��Ʈ�ѷ���� ���̰�,
 * @RequestMapping("/jsp�̸�")�� �ش��ϴ� jsp�̸����� ��û�� ������ �����Ѵٴ� ���̴�. ���� ������ ���� �Ÿ� ���⼭ �߻�!!
 * �̋�, return "�����̸�/jsp�̸�" ���� ��ȯ����� �Ѵ�.
 * ����� �۵��ϴ��� Ȯ���ϱ� ���� System.out.println ���� �ܼ�â�� ǥ��. �� ������ �����ص� ��.
 * 
 *  */

@Controller
public class AuctionController {
	
	// ��� ���� ȭ��
	@RequestMapping("/gList")
	public String intro(Model model) {
		System.out.println("��� ���� ��Ʈ�ѷ� �����");
		return "auction/gList";
	}
	
	// ��� ���
	@RequestMapping("/gWrite")
	public String write(Model model) {
		System.out.println("��� ��� ��Ʈ�ѷ� �����");
		return "auction/gWrite";
	}
}
