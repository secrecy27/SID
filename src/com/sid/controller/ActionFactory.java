package com.sid.controller;

import com.sid.controller.action.CartDeleteAction;
import com.sid.controller.action.CartInsertAction;
import com.sid.controller.action.CartListAction;
import com.sid.controller.action.ContractAction;
import com.sid.controller.action.EmailCheckFormAction;
import com.sid.controller.action.IndexAction;
import com.sid.controller.action.JoinAction;
import com.sid.controller.action.JoinFormAction;
import com.sid.controller.action.MyPageAction;
import com.sid.controller.action.OrderAllAction;
import com.sid.controller.action.OrderDetailAction;
import com.sid.controller.action.OrderInsertAction;
import com.sid.controller.action.OrderListAction;
import com.sid.controller.action.QnaListAction;
import com.sid.controller.action.QnaViewAction;
import com.sid.controller.action.QnaWriteFormAction;

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
		System.out.println("ActionFactory  :" + command);
		if (command.equals("index")) {
			action = new IndexAction();
		} else if (command.equals("contract")) {
			action = new ContractAction();
		} else if (command.equals("join_form")) {
			action = new JoinFormAction();
		} else if (command.equals("id_check_form")) {
			action = new EmailCheckFormAction();
		} else if (command.equals("join")) {
			action = new JoinAction();
		} else if (command.equals("cart_insert")) {
			action = new CartInsertAction();
		} else if (command.equals("cart_list")) {
			action = new CartListAction();
		} else if (command.equals("cart_delete")) {
			action = new CartDeleteAction();
		} else if (command.equals("order_insert")) {
			action = new OrderInsertAction();
		} else if (command.equals("order_list")) {
			action = new OrderListAction();
		} else if (command.equals("mypage")) {
			action = new MyPageAction();
		} else if (command.equals("order_detail")) {
			action = new OrderDetailAction();
		} else if (command.equals("order_all")) {
			action = new OrderAllAction();
		} else if (command.equals("qna_list")) {
			action = new QnaListAction();
		} else if (command.equals("qna_write_form")) {
			action = new QnaWriteFormAction();
		} else if (command.equals("qna_view")) {
			action = new QnaViewAction();
		}

		return action;
	}
}
