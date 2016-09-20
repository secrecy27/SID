package com.sid.controller;

import com.sid.controller.action.AdminIndexAction;
import com.sid.controller.action.AdminLoginAction;
import com.sid.controller.action.AdminLogoutAction;
import com.sid.controller.action.AdminMemberListAction;
import com.sid.controller.action.AdminOrderListAction;
import com.sid.controller.action.AdminOrderSaveAction;
import com.sid.controller.action.AdminProductDetailAction;
import com.sid.controller.action.AdminProductListAction;
import com.sid.controller.action.AdminProductUpdateAction;
import com.sid.controller.action.AdminProductUpdateFormAction;
import com.sid.controller.action.AdminProductWriteAction;
import com.sid.controller.action.AdminProductWriteFormAction;
import com.sid.controller.action.AdminQnaDetailAction;
import com.sid.controller.action.AdminQnaListAction;
import com.sid.controller.action.AdminQnaResaveAction;
import com.sid.controller.action.CartDeleteAction;
import com.sid.controller.action.ContractAction;
import com.sid.controller.action.DeleteProductAction;
import com.sid.controller.action.EmailCheckFormAction;
import com.sid.controller.action.IndexAction;
import com.sid.controller.action.JoinAction;
import com.sid.controller.action.JoinDesignerAction;
import com.sid.controller.action.LoginAction;
import com.sid.controller.action.LogoutAction;
import com.sid.controller.action.MyPageAction;
import com.sid.controller.action.OrderAllAction;
import com.sid.controller.action.OrderDetailAction;
import com.sid.controller.action.OrderInsertAction;
import com.sid.controller.action.OrderListAction;
import com.sid.controller.action.QnaListAction;
import com.sid.controller.action.QnaViewAction;
import com.sid.controller.action.QnaWriteFormAction;
import com.sid.controller.action.customer.Customer_Accountchange_Action;
import com.sid.controller.action.customer.Customer_All_Action;
import com.sid.controller.action.customer.Customer_Basket_Action;
import com.sid.controller.action.customer.Customer_Buylist_Action;
import com.sid.controller.action.customer.Customer_Coupon_Action;
import com.sid.controller.action.customer.Customer_Dplan_Action;
import com.sid.controller.action.customer.Customer_Pocket_Action;
import com.sid.controller.action.customer.ListDplanOngoing_Action;
import com.sid.controller.action.customer.ListLPocketAction;
import com.sid.controller.action.customer.ListRPocketAction;
import com.sid.controller.action.designer.Designer_All_Action;
import com.sid.controller.action.designer.Designer_Bplan_Action;
import com.sid.controller.action.designer.Designer_Cplan_Action;
import com.sid.controller.action.designer.Designer_Dplan_Action;
import com.sid.controller.apage.AItemToCartAction;
import com.sid.controller.apage.AItemToLPocketAction;
import com.sid.controller.apage.AdminApageDeleteAction;
import com.sid.controller.apage.AdminApageListAction;
import com.sid.controller.apage.AdminApageWriteAction;
import com.sid.controller.apage.ApageReadAction;
import com.sid.controller.bpage.BItemToRPocketAction;
import com.sid.controller.bpage.BWriteAction;
import com.sid.controller.bpage.BpageDeleteAction;
import com.sid.controller.bpage.BpageListAction;
import com.sid.controller.bpage.BpageReadAction;
import com.sid.controller.cpage.CItemToCartAction;
import com.sid.controller.cpage.CpageDeleteAction;
import com.sid.controller.cpage.CpageListAction;
import com.sid.controller.cpage.CpageReadAction;
import com.sid.controller.cpage.CpageWriteAction;
import com.sid.controller.cpage.HpageUploadAction;
import com.sid.controller.dpage.DWriteAction;
import com.sid.controller.dpage.DitemSuggestAction;
import com.sid.controller.dpage.DpageListAction;
import com.sid.controller.dpage.DpageReadAction;
import com.sid.controller.hpage.HpageListAction;

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
		} else if (command.equals("email_check_form")) {
			action = new EmailCheckFormAction();
		} else if (command.equals("join_form")) {
			action = new JoinAction();
		} else if (command.equals("join_design")) {
			action = new JoinDesignerAction();
			// 회원가입페이지
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

		} else if (command.equals("admin_login_form")) {
			action = new AdminIndexAction();
		} else if (command.equals("admin_login")) {
			action = new AdminLoginAction();
		} else if (command.equals("admin_logout")) {
			action = new AdminLogoutAction();
		} else if (command.equals("admin_product_list")) {
			action = new AdminProductListAction();
		} else if (command.equals("admin_product_write_form")) {
			action = new AdminProductWriteFormAction();
		} else if (command.equals("admin_product_write")) {
			action = new AdminProductWriteAction();
		} else if (command.equals("admin_product_detail")) {
			action = new AdminProductDetailAction();
		} else if (command.equals("admin_product_update_form")) {
			action = new AdminProductUpdateFormAction();
		} else if (command.equals("admin_product_update")) {
			action = new AdminProductUpdateAction();
		} else if (command.equals("admin_order_list")) {
			action = new AdminOrderListAction();
		} else if (command.equals("admin_order_save")) {
			action = new AdminOrderSaveAction();
		} else if (command.equals("admin_member_list")) {
			action = new AdminMemberListAction();
		} else if (command.equals("admin_qna_list")) {
			action = new AdminQnaListAction();
		} else if (command.equals("admin_qna_detail")) {
			action = new AdminQnaDetailAction();
		} else if (command.equals("admin_qna_repsave")) {
			action = new AdminQnaResaveAction();

		} else if (command.equals("admin_apage_write")) {
			action = new AdminApageWriteAction();
		} else if (command.equals("admin_apage_list")) {
			action = new AdminApageListAction();
		} else if (command.equals("admin_apage_delete")) {
			action = new AdminApageDeleteAction();
		} else if (command.equals("aItemtoCart")) {
			action = new AItemToCartAction();
		} else if (command.equals("aItemtoLpocket")) {
			action = new AItemToLPocketAction();
		} else if (command.equals("read_apage")) {
			action = new ApageReadAction();
			// a페이지

		} else if (command.equals("bWrite")) {
			action = new BWriteAction();
		} else if (command.equals("list_bpage")) {
			action = new BpageListAction();
		} else if (command.equals("bpage_delete")) {
			action = new BpageDeleteAction();
		} else if (command.equals("bItemtoRpocket")) {
			action = new BItemToRPocketAction();
		} else if (command.equals("read_bpage")) {
			action = new BpageReadAction();
			// b페이지

		} else if (command.equals("cpage_write")) {
			action = new CpageWriteAction();
		} else if (command.equals("cpage_list")) {
			action = new CpageListAction();
		} else if (command.equals("read_cpage")) {
			action = new CpageReadAction();
		} else if (command.equals("cpage_delete")) {
			action = new CpageDeleteAction();
		} else if (command.equals("hpage_upload")) {
			action = new HpageUploadAction();
		} else if (command.equals("cItemtoCart")) {
			action = new CItemToCartAction();
			// c페이지

		} else if (command.equals("list_hpage")) {
			action = new HpageListAction();
			// h페이지

		} else if (command.equals("dWrite")) {
			action = new DWriteAction();
		} else if (command.equals("ditem_suggest")) {
			action = new DitemSuggestAction();
		} else if (command.equals("list_dpage")) {
			action = new DpageListAction();
		} else if (command.equals("read_dpage")) {
			action = new DpageReadAction();
			// d페이지

		} else if (command.equals("hpage")) {
			action = new DpageReadAction();
			// h페이지
		} else if (command.equals("login")) {
			action = new LoginAction();

		} else if (command.equals("customer_all")) {
			action = new Customer_All_Action();
		} else if (command.equals("customer_dplan")) {
			action = new Customer_Dplan_Action();
		} else if (command.equals("customer_dplan_ongoing")) {
			action = new ListDplanOngoing_Action();

		} else if (command.equals("customer_buylist")) {
			action = new Customer_Buylist_Action();

		} else if (command.equals("customer_coupon")) {
			action = new Customer_Coupon_Action();
			// 쿠폰 페이지 나중에 제작

		} else if (command.equals("customer_basket")) {
			action = new Customer_Basket_Action();
		} else if (command.equals("delete_product")) {
			action = new DeleteProductAction();
			// 장바구니

		} else if (command.equals("customer_pocket")) {
			action = new Customer_Pocket_Action();
		} else if (command.equals("customer_rpocket_list")) {
			action = new ListRPocketAction();
		} else if (command.equals("customer_lpocket_list")) {
			action = new ListLPocketAction();
			// 주머니관리

		} else if (command.equals("customer_accountchange")) {
			action = new Customer_Accountchange_Action();
		} else if (command.equals("logout")) {
			action = new LogoutAction();
			// 구매자 관리 페이지

		} else if (command.equals("designer_all")) {
			action = new Designer_All_Action();
		} else if (command.equals("designer_bplan")) {
			action = new Designer_Bplan_Action();
		} else if (command.equals("designer_cplan")) {
			action = new Designer_Cplan_Action();
		} else if (command.equals("designer_dplan")) {
			action = new Designer_Dplan_Action();
			// 디자이너 관리 페이지
		}
		return action;
	}
}
