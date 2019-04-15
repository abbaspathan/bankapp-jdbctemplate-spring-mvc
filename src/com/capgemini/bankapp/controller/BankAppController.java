package com.capgemini.bankapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.capgemini.bankapp.client.BankAccount;
import com.capgemini.bankapp.exception.AccountNotFoundException;
import com.capgemini.bankapp.exception.LowBalanceException;
import com.capgemini.bankapp.service.BankAccountService;

@Controller
@RequestMapping("/bank")
public class BankAppController {

	@Autowired
	private BankAccountService bankService;

	@RequestMapping("/")
	public String getHomePage() {
		return "index";
	}

	@RequestMapping("/form")
	public String getNewAccountFormPage() {
		return "newAccount";
	}

	@RequestMapping("/addnew")
	public String addNewAccount(@RequestParam("accountHolderName") String accountHolderName,
			@RequestParam("accountType") String accountType, @RequestParam("accountBalance") double accountBalance,
			Model model) {
		boolean result = bankService.addNewBankAccount(new BankAccount(accountHolderName, accountType, accountBalance));
		if (result) {
			model.addAttribute("message", "Account Created successfully");
		} else {
			model.addAttribute("message", "Account Not Created");
		}
		return "success";
	}

	@RequestMapping("/getBalanceForm")
	public String getBalanceForm() {
		return "checkBalance";
	}

	@RequestMapping("/getBalance")
	public String getBalance(@RequestParam("account_id") long account_id, Model model) {
		try {
			double balance = bankService.checkBalance(account_id);
			model.addAttribute("message", "Your Balance is:" + balance);
		} catch (AccountNotFoundException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}

		return "success";
	}

	@RequestMapping("/getWithdrawForm")
	public String getWithdrawForm() {
		return "withdraw";
	}

	@RequestMapping("/withdrawBalance")
	public String withdrawBalance(@RequestParam("account_id") long account_id, @RequestParam("amount") double amount,
			Model model) {
		try {
			double balance = bankService.withdraw(account_id, amount);
			model.addAttribute("message", "Your Current Balance is:" + balance);
		} catch (AccountNotFoundException | LowBalanceException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return "success";
	}

	@RequestMapping("/getDepositForm")
	public String getDepositForm() {
		return "deposit";
	}

	@RequestMapping("/depositBalance")
	public String depositBalance(@RequestParam("account_id") long account_id, @RequestParam("amount") double amount,
			Model model) {
		try {
			double balance = bankService.deposit(account_id, amount);
			model.addAttribute("message", "Your Current Balance is:" + balance);
		} catch (AccountNotFoundException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return "success";
	}

	@RequestMapping("/getDeleteForm")
	public String getDeleteForm() {
		return "deleteAccount";
	}

	@RequestMapping("/deleteAccount")
	public String deleteAccount(@RequestParam("account_id") long account_id, Model model) {
		try {
			boolean result = bankService.deleteBankAccount(account_id);
			model.addAttribute("message", "Account Deleted Successfully..!!");
		} catch (AccountNotFoundException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return "success";
	}

	@RequestMapping("/getSearchAccountForm")
	public String getSearchAccountForm() {
		return "searchAccount";
	}

	@RequestMapping("/displayBankAccount")
	public String displayBankAccountDetails(@RequestParam("account_id") long account_id, Model model) {
		String errormsg = null;
		try {
			BankAccount account = bankService.searchAccountDetails(account_id);
			model.addAttribute("message", account);
			errormsg = "displayBankAccount";
		} catch (AccountNotFoundException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
			errormsg = "success";
		}
		return errormsg;
	}

	@RequestMapping("/displayAllBankAccount")
	public String displayAllBankAccountDetails(Model model) {
		List<BankAccount> accounts = bankService.findAllBankAccountsDetails();
		model.addAttribute("accounts", accounts);
		return "displayAllBankAccounts";
	}

	@RequestMapping("/getFundTransferForm")
	public String getFundTransferForm() {
		return "fundTransfer";
	}

	@RequestMapping("/fundTransfer")
	public String displayBankAccountDetails(@RequestParam("sender_account_id") long sender_account_id,
			@RequestParam("reciver_account_id") long reciver_account_id, @RequestParam("amount") double amount,
			Model model) {
		try {
			double balance = bankService.fundTransfer(sender_account_id, reciver_account_id, amount);
			model.addAttribute("message", "Transfer Successful....\nYour current Balance is:" + balance);
		} catch (AccountNotFoundException | LowBalanceException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return "success";
	}

	@RequestMapping("/getUpdateDetailForm")
	public String getUpdateDetailForm() {
		return "updateDetail";
	}
	
	@RequestMapping("/getDetail")
	public String getDetail(@RequestParam("account_id") long account_id,Model model) {
		String errormsg = null;
		try {
			BankAccount account = bankService.searchAccountDetails(account_id);
			model.addAttribute("account", account);
			errormsg = "updateBankAccountDetail";
		} catch (AccountNotFoundException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
			errormsg = "success";
		}
		return errormsg;
	}

	@RequestMapping("/updateDetail")
	public String updateBankAccountDetails(@RequestParam("accountId") long account_id,
			@RequestParam("accountHolderName") String accountHolderName, @RequestParam("accountType") String accountType, Model model) {
		try {
			boolean result = bankService.updateBankAccountDetails(account_id, accountHolderName, accountType);
			model.addAttribute("message", "Account Detail Updated Successfully...!!");
		} catch (AccountNotFoundException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return "success";
	}

}
