package account.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import account.entity.Account;
import account.service.AccountService;
import account.service.AccountServiceClient;

/*
 * account ���� ������ �����Ű�� ���� ��Ʈ�ѷ�
 * @Controller�� ��Ʈ�ѷ���� ���̰�,
 * @RequestMapping("/jsp�̸�")�� �ش��ϴ� jsp�̸����� ��û�� ������ �����Ѵٴ� ���̴�. ���� ������ ���� �Ÿ� ���⼭ �߻�!!
 * �̋�, return "�����̸�/jsp�̸�" ���� ��ȯ����� �Ѵ�.
 * ����� �۵��ϴ��� Ȯ���ϱ� ���� System.out.println ���� �ܼ�â�� ǥ��. �� ������ �����ص� ��.
 * 
 *  */

@Controller
public class AccountController {
	
	@Autowired
	AccountService act;
	
	// ���� ȭ��, �α��� ȭ��
	@RequestMapping(value = {"/", "/Login"})
	public String login(Model model) {
		System.out.println("Login ��Ʈ�ѷ� �����");
		
		// ����
		AccountServiceClient as = new AccountServiceClient();
		as.select();
		
		return "account/login";
	}
	
	// ȸ������ �߰� ������
	@RequestMapping("/select")
	public String registPage(Model model) {
		System.out.println("�߰� ȸ������ ��Ʈ�ѷ� �����");
		return "account/select";
	}
	
	// ��� ȸ������ ������
	@RequestMapping("/farmerRegist")
	public String farmer(Model model) {
		System.out.println("��� ȸ������ ��Ʈ�ѷ� �����");
		return "account/farmerRegist";
	}
	
	// �Ϲ� ȸ������ ������
	@RequestMapping("/standardRegist")
	public String standard(Model model) {
		System.out.println("�Ϲ� ȸ������ ��Ʈ�ѷ� �����");
		return "account/standardRegist";
	}
	
	// ��� ȸ������ ���� ����
	@RequestMapping("regist")
	public String regist(Model model,Account account) {
		System.out.println("ȸ������ ���� ����");
		act.regist(account);
		return "account/login";
	}
		
	// ���̵� ã�� ������
	@RequestMapping("/id_found")
	public String idFound(Model model) {
		System.out.println("���̵� ã�� ��Ʈ�ѷ� �����");
		return "account/id_found";
	}
	
	// ��й�ȣ ã�� ������
	@RequestMapping("/pw_found")
	public String pwFound(Model model) {
		System.out.println("��й�ȣ ã�� ��Ʈ�ѷ� �����");
		return "account/pw_found";
	}
	
	//��й�ȣ ã�� ���� ����
	@RequestMapping("/pwd_service")
	public String pwdFound(Model model,HttpServletRequest request,HttpServletResponse response) {
		System.out.println("��й�ȣ ã�� ���� �����");
		Account account=new Account();
		account.setId(request.getParameter("id"));
		account.setName(request.getParameter("name"));
		account.setEmail(request.getParameter("email"));
		
		model.addAttribute("pw",act.findPwd(account));
		return "account/pwd_result";
	}
	 @RequestMapping("idCheck")
	 public @ResponseBody String id_check(HttpServletRequest request) {
		 System.out.println("���̵� �ߺ� üũ");
	     System.out.println(request.getParameter("id"));
	     String str = act.idCheck(request.getParameter("id"));
	     System.out.print(str);
	     return str;
	 }
	 @RequestMapping("bsnCheck")
	 public @ResponseBody String bsn_check(HttpServletRequest request) {
		 System.out.println("bsn �ߺ� üũ");
		 String str=act.bsn_Check(request.getParameter("businessNum"));
		 System.out.println(str);
		 return str;
	 }
	 
	 @RequestMapping("phoneCheck")
	 public @ResponseBody String phone_check(HttpServletRequest request) {
		 System.out.println("����ȣ �ߺ� üũ");
		 String str=act.phone_Check(request.getParameter("phone"));
		 System.out.println(str);
		 return str;
	 }
	 
	// �α��� ��, ���� ������
	@RequestMapping("/introPageDesign")
	public String intro(Model model) {
		System.out.println("���� ������ ��Ʈ�ѷ� �����");
		return "account/introPageDesign";
	}
}
