package pages;



/*
 * import java.sql.SQLException; import java.util.ArrayList; import
 * java.util.List;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * org.apache.commons.lang3.StringUtils; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.beans.factory.annotation.Value; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.PathVariable; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestParam;
 * 
 * import DAO.BookDao; import DAO.CartDao; import MODEL.book; import MODEL.cart;
 * import MODEL.cartitem; import Services.CookieUtils; import
 * Services.JSonUtils;
 * 
 * //cookie中实现添加购物车
 * 
 * @Controller public class ShopCartController {
 * 
 * @Autowired private BookDao bookDao;
 * 
 * @Autowired private CartDao cartDao; // 获取过期时间
 * 
 * @Value("${EXPIRE_KEY}") private Integer EXPIRE_KEY;
 * 
 * @Value("${CART_COOKIE}") private String CART_COOKIE;
 * 
 *//**
	 * 需求：将商品加入购物车中未登录状态下，将购物超过添加到cookie中
	 * 
	 * 分析：1、从cookie中获取购物车信息 2、判断购物车中的商品，如果添加的商品存在，数量相加，不存在，根据商品id查询商品信息，添加到cookie中
	 * 3、将购物车列表信息写入cookie中
	 * 
	 * 
	 * @param itemisbn
	 * @param num
	 * @return
	 * @throws Exception
	 * @throws SQLException
	 *//*
		 * @RequestMapping("/cart/add/{itemisbn}") public String addCart(@PathVariable
		 * Long itemisbn, @RequestParam(defaultValue = "1") Integer num,
		 * HttpServletRequest request, HttpServletResponse response) throws
		 * SQLException, Exception { // 1.获得购物车列表 List<cartitem> itemList =
		 * getCartItemList(request); // 用来判断商品是否存在的标志 boolean flag = false; //
		 * 2、循环遍列表中的商品信息 for (cartitem cartitem : itemList) { // 3、判断添加的商品是否存在 if
		 * (cartitem.getBook().getISBN() == itemisbn.longValue()) { //
		 * 4、添加的商品在cookie中存在，将数量相加 cartitem.setCount(cartitem.getCount() + num); // 重置标签
		 * flag = true; // 跳出循环 break; } } if (!flag) { // cookie中没有添加的商品信息 //
		 * 通过商品id查询商品信息 cartitem item =new cartitem();
		 * item.setBook(bookDao.getBookbyisbn(itemisbn)); item.setCount(num); if
		 * (StringUtils.isNotBlank(item.getBook().getImg())) { // 取一张图片用于展示使用
		 * item.getBook().setImg(item.getBook().getImg().split(",")[0]); } // 将商品添加购物车
		 * itemList.add(item); } //将购物车写入cookie中
		 * 
		 * CookieUtils.setCookie(request, response, CART_COOKIE,
		 * JSonUtils.objectToJson(itemList).toString(),EXPIRE_KEY,true);
		 * 
		 * return "cartSuccess";
		 * 
		 * }
		 * 
		 * cookie中查询购物车列表：
		 * 
		 * 思路：
		 * 
		 * 1、根据cookie的name值直接取出商品列表信息
		 * 
		 * 2、将购物车列表添加到model中，返回逻辑视图
		 * 
		 * private List<cartitem> getCartItemList(HttpServletRequest request) { //
		 * 使用utf-8，需要设置第三个参数为true String json = CookieUtils.getCookieValue(request,
		 * CART_COOKIE, true); if (StringUtils.isNotBlank(json)) { // 返回cookie中取出的数据集合
		 * return JSonUtils.jsonToList(json, cartitem.class); } // 返回空集合对象 return new
		 * ArrayList<>(); }
		 * 
		 * 
		 * 
		 * @RequestMapping("/cart/cart") public String getCartList(HttpServletRequest
		 * request, HttpServletResponse response, Model model) { // 从cookie中取出商品信息，
		 * List<cartitem> itemList = getCartItemList(request); // 将购物车信息返回给页面中
		 * model.addAttribute("cartList", itemList); // 跳转逻辑视图 return "cart"; }
		 * 
		 * cookie中实现删除购物车中商品的功能：
		 * 
		 * 1、接收页面传递的善品id值
		 * 
		 * 2、从cookie中取出购物车列表，进行循环遍历，然后遍历的每一个商品信息和要删除的商品进行对比
		 * 
		 * 3、如果存在就从购物车列表中将该商品移除
		 * 
		 * 4、重新将购物车列表写入cookie中
		 * 
		 * 5、将cookie信息响应给客户端
		 * 
		 * @RequestMapping("/cart/delete/{itemId}") public String
		 * deleteCartItem(@PathVariable Long itemId, HttpServletRequest request,
		 * HttpServletResponse response) { List<cartitem> list =
		 * getCartItemList(request); for (cartitem cartitem : list) { if
		 * (cartitem.getBook().getISBN() == itemId.longValue()) { list.remove(cartitem);
		 * break; } } // 删除成功后，将购物车列表写入cookie中 CookieUtils.setCookie(request, response,
		 * CART_COOKIE, JSonUtils.objectToJson(list), EXPIRE_KEY, true);
		 * 
		 * // 删除成功后，重定向到购物车列表页面 return "redirect:/cart/cart.html";
		 * 
		 * }
		 * 
		 * @Override public E3Result addCart(Long userId, Long itemId, Integer num) {
		 * try { // 从redis中取出购物车，判断是否已经有购物项 Boolean hexists =
		 * jedisClient.hexists(CART_REDIS_KEY_PRE + ":" + userId + "", itemId + ""); if
		 * (hexists) { // 表示购物车中已经有该商品，只需要将该商品的数量相加即可 String hget =
		 * jedisClient.hget(CART_REDIS_KEY_PRE + ":" + userId + "", itemId + ""); //
		 * 将数量相加 TbItem item = JsonUtils.jsonToPojo(hget, TbItem.class);
		 * item.setNum(item.getNum() + num); // 将商品重新放入购物车中
		 * jedisClient.hset(CART_REDIS_KEY_PRE + ":" + userId + "", itemId + "",
		 * JsonUtils.objectToJson(item)); return E3Result.ok(); }
		 * 
		 * // 表示购物车中没有要添加的商品信息 // 根据商品的id查询商品的信息 TbItem item =
		 * itemMapper.selectByPrimaryKey(itemId); item.setNum(num); if
		 * (StringUtils.isNotBlank(item.getImage())) {
		 * item.setImage(item.getImage().split(",")[0]); } // 将商品信息存入购物车中
		 * jedisClient.hset(CART_REDIS_KEY_PRE + ":" + userId + "", itemId + "",
		 * JsonUtils.objectToJson(item)); return E3Result.ok(); } catch (Exception e) {
		 * e.printStackTrace(); } return E3Result.build(400, "商品添加购物车失败");
		 * 
		 * } }
		 */