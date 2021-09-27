/******************************************************************************
 * Copyright (C) 2008 Low Heng Sin                                            *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempiere.webui;

import org.adempiere.webui.desktop.IDesktop;
import org.adempiere.webui.util.UserPreference;
import org.compiere.model.MUser;
import org.zkforge.keylistener.Keylistener;

/**
 * 
 * @author hengsin
 *
 */
public interface IWebClient {

	/**
	 * login completed
	 */
	public void loginCompleted();

	/**
	 * logout
	 */
	public void logout();

	/**
	 * logout after browser destroyed
	 */
	public void logoutAfterTabDestroyed();

	/**
	 * 
	 * @return IDesktop
	 */
	public IDesktop getAppDeskop();

	/**
	 * 
	 * @param userId
	 * @return UserPreference
	 */
	public UserPreference loadUserPreference(int userId);

	/**
	 * 
	 * @return UserPreference
	 */
	public UserPreference getUserPreference();
	
	/**
	 * change Role
	 */
	public void changeRole(MUser user);

	/**
	 * @return keylistener
	 */
	public abstract Keylistener getKeylistener();
	
	default ClientInfo getClientInfo() {
		return getAppDeskop().getClientInfo();
	}
}