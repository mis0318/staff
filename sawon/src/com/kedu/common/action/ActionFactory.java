package com.kedu.common.action;

import com.kedu.common.controller.NoticeWriteFormAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	public ActionFactory() {
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		if (command.equals("join_form")) {
			action = new JoinFormAction();
		}else if (command.equals("join")) {
			action = new JoinAction();
		}else if(command.equals("notice_list")) {
			action = new NoticeListAction();
		}else if (command.equals("notice_write_form")) {
			action = new NoticeWriteFormAction();
			System.out.println("action = new NoticeWriteFormAction();");
		}else if (command.equals("notice_write")) {
			action = new NoticeWriteAction();
		}else if (command.equals("notice_view")) {
			action = new NoticeViewAction();
		}else if (command.equals("notice_check_pass_form")) {
			action = new NoticeCheckPassFormAction();
		}else if (command.equals("notice_check_pass")) {
			action = new NoticeCheckPassAction();
		}else if (command.equals("notice_update_form")) {
			action = new NoticeUpdateFormAction();
		}else if (command.equals("notice_update")) {
			action = new NoticeUpdateAction();
		}else if (command.equals("notice_delete")) {
			action = new NoticeDeleteAction();
		}
		return action;
	}
}