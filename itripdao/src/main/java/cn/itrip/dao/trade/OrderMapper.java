package cn.itrip.dao.trade;

import cn.itrip.beans.pojo.ItripHotelOrder;
import cn.itrip.beans.pojo.ItripUser;

import java.util.Map;

public interface OrderMapper {
    public ItripHotelOrder getItripHotelOrder(String orderNo);

    public Map getItripUserListByMap(ItripUser itripUser);

    public int updateItripHotelOrder(ItripHotelOrder itripHotelOrder);
}
