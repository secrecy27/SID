package com.sid.controller;

import com.sid.controller.action.CartInsertAction;
import com.sid.controller.action.ContractAction;
import com.sid.controller.action.EmailCheckFormAction;
import com.sid.controller.action.IndexAction;
import com.sid.controller.action.JoinAction;
import com.sid.controller.action.JoinFormAction;

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
		}else if (command.equals("contract")) {
			action = new ContractAction();
		}else if(command.equals("join_form")){
			action=new JoinFormAction();
		}else if(command.equals("id_check_form")){
			action=new EmailCheckFormAction();
		}else if(command.equals("join")){
			action=new JoinAction();
		}else if(command.equals("cart_insert")){
			action=new CartInsertAction();
		}
		
		return action;
	}
}
