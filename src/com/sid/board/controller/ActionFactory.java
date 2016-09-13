package com.sid.board.controller;

import com.sid.board.controller.action.Action;
import com.sid.board.controller.action.BoardCheckPassAction;
import com.sid.board.controller.action.BoardCheckPassFormAction;
import com.sid.board.controller.action.BoardDeleteAction;
import com.sid.board.controller.action.BoardListAction;
import com.sid.board.controller.action.BoardUpdateAction;
import com.sid.board.controller.action.BoardUpdateFormAction;
import com.sid.board.controller.action.BoardViewAction;
import com.sid.board.controller.action.BoardWriteAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory Board :" + command);
		
		if (command.equals("board_list")) {
			action = new BoardListAction();
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if (command.equals("board_view")) {
			action = new BoardViewAction();
		} else if (command.equals("board_check_pass_form")) {
			action = new BoardCheckPassFormAction();
		} else if (command.equals("board_check_pass")) {
			action = new BoardCheckPassAction();
		} else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction();
		} else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}
		return action;
	}
}
