package account.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import account.entity.Account;
import account.repository.AccountRepository;

@Service
public class AccountService {
	@Autowired
	private AccountRepository ar;

	// ���̵� ã�� ����
	public Account findById(String num) {
		Account account = ar.findByid(num);
		return account;
	}

	// �н����� ã�� ����
	public String findPwd(Account account) {
		Account act = ar.findByid(account.getId());
		try {
			if (account.getEmail().equals(act.getEmail()) && account.getName().equals(act.getName())) {
				return act.getPassword();
			} else {
				System.out.println("������ Ʋ���ϴ�.");
				return "������ Ʋ���ϴ�.";
			}
		} catch (NullPointerException npe) {
			System.out.println("���̵� �������� �ʽ��ϴ�.");
			return "���̵� �������� �ʽ��ϴ�.";
		}
	}

	// ȸ������ ����
	public void regist(Account account) {
		Account act = ar.findByid(account.getId());
		try {
			if (act.getId() != null) {
				System.out.println("�ߺ��� ���̵� �Դϴ�.");
			}
		} catch (NullPointerException npe) {
			account.setEmail(account.getEmailHead()+"@"+account.getEmailTail());
			//account.setEmail(account.getEmail());
			ar.save(account);
		}

	}

	// ȸ������ ���̵� �ߺ� ã��
	public String idCheck(String id) {
		if (ar.findByid(id) == null) {
			System.out.println("not duplicated");
			return "YES";
		} else {
			System.out.println("duplicated");
			return "NO";
		}
	}

	public String bsn_Check(String bsn) {
		if (ar.findBybusinessNum(bsn) == null) {
			System.out.println("not duplicated");
			return "YES";
		} else {
			System.out.println(ar.findBybusinessNum(bsn));
			System.out.println("duplicated");
			return "NO";
		}
	}

	public String phone_Check(String phone) {
		if (ar.findByphone(phone) == null) {
			System.out.println("not duplicated");
			return "YES";
		} else {
			System.out.println(ar.findBybusinessNum(phone));
			System.out.println("duplicated");
			return "NO";
		}
	}
}
