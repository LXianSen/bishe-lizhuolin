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
 * //cookie��ʵ����ӹ��ﳵ
 * 
 * @Controller public class ShopCartController {
 * 
 * @Autowired private BookDao bookDao;
 * 
 * @Autowired private CartDao cartDao; // ��ȡ����ʱ��
 * 
 * @Value("${EXPIRE_KEY}") private Integer EXPIRE_KEY;
 * 
 * @Value("${CART_COOKIE}") private String CART_COOKIE;
 * 
 *//**
	 * ���󣺽���Ʒ���빺�ﳵ��δ��¼״̬�£������ﳬ����ӵ�cookie��
	 * 
	 * ������1����cookie�л�ȡ���ﳵ��Ϣ 2���жϹ��ﳵ�е���Ʒ�������ӵ���Ʒ���ڣ�������ӣ������ڣ�������Ʒid��ѯ��Ʒ��Ϣ����ӵ�cookie��
	 * 3�������ﳵ�б���Ϣд��cookie��
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
		 * SQLException, Exception { // 1.��ù��ﳵ�б� List<cartitem> itemList =
		 * getCartItemList(request); // �����ж���Ʒ�Ƿ���ڵı�־ boolean flag = false; //
		 * 2��ѭ�����б��е���Ʒ��Ϣ for (cartitem cartitem : itemList) { // 3���ж���ӵ���Ʒ�Ƿ���� if
		 * (cartitem.getBook().getISBN() == itemisbn.longValue()) { //
		 * 4����ӵ���Ʒ��cookie�д��ڣ���������� cartitem.setCount(cartitem.getCount() + num); // ���ñ�ǩ
		 * flag = true; // ����ѭ�� break; } } if (!flag) { // cookie��û����ӵ���Ʒ��Ϣ //
		 * ͨ����Ʒid��ѯ��Ʒ��Ϣ cartitem item =new cartitem();
		 * item.setBook(bookDao.getBookbyisbn(itemisbn)); item.setCount(num); if
		 * (StringUtils.isNotBlank(item.getBook().getImg())) { // ȡһ��ͼƬ����չʾʹ��
		 * item.getBook().setImg(item.getBook().getImg().split(",")[0]); } // ����Ʒ��ӹ��ﳵ
		 * itemList.add(item); } //�����ﳵд��cookie��
		 * 
		 * CookieUtils.setCookie(request, response, CART_COOKIE,
		 * JSonUtils.objectToJson(itemList).toString(),EXPIRE_KEY,true);
		 * 
		 * return "cartSuccess";
		 * 
		 * }
		 * 
		 * cookie�в�ѯ���ﳵ�б�
		 * 
		 * ˼·��
		 * 
		 * 1������cookie��nameֱֵ��ȡ����Ʒ�б���Ϣ
		 * 
		 * 2�������ﳵ�б���ӵ�model�У������߼���ͼ
		 * 
		 * private List<cartitem> getCartItemList(HttpServletRequest request) { //
		 * ʹ��utf-8����Ҫ���õ���������Ϊtrue String json = CookieUtils.getCookieValue(request,
		 * CART_COOKIE, true); if (StringUtils.isNotBlank(json)) { // ����cookie��ȡ�������ݼ���
		 * return JSonUtils.jsonToList(json, cartitem.class); } // ���ؿռ��϶��� return new
		 * ArrayList<>(); }
		 * 
		 * 
		 * 
		 * @RequestMapping("/cart/cart") public String getCartList(HttpServletRequest
		 * request, HttpServletResponse response, Model model) { // ��cookie��ȡ����Ʒ��Ϣ��
		 * List<cartitem> itemList = getCartItemList(request); // �����ﳵ��Ϣ���ظ�ҳ����
		 * model.addAttribute("cartList", itemList); // ��ת�߼���ͼ return "cart"; }
		 * 
		 * cookie��ʵ��ɾ�����ﳵ����Ʒ�Ĺ��ܣ�
		 * 
		 * 1������ҳ�洫�ݵ���Ʒidֵ
		 * 
		 * 2����cookie��ȡ�����ﳵ�б�����ѭ��������Ȼ�������ÿһ����Ʒ��Ϣ��Ҫɾ������Ʒ���жԱ�
		 * 
		 * 3��������ھʹӹ��ﳵ�б��н�����Ʒ�Ƴ�
		 * 
		 * 4�����½����ﳵ�б�д��cookie��
		 * 
		 * 5����cookie��Ϣ��Ӧ���ͻ���
		 * 
		 * @RequestMapping("/cart/delete/{itemId}") public String
		 * deleteCartItem(@PathVariable Long itemId, HttpServletRequest request,
		 * HttpServletResponse response) { List<cartitem> list =
		 * getCartItemList(request); for (cartitem cartitem : list) { if
		 * (cartitem.getBook().getISBN() == itemId.longValue()) { list.remove(cartitem);
		 * break; } } // ɾ���ɹ��󣬽����ﳵ�б�д��cookie�� CookieUtils.setCookie(request, response,
		 * CART_COOKIE, JSonUtils.objectToJson(list), EXPIRE_KEY, true);
		 * 
		 * // ɾ���ɹ����ض��򵽹��ﳵ�б�ҳ�� return "redirect:/cart/cart.html";
		 * 
		 * }
		 * 
		 * @Override public E3Result addCart(Long userId, Long itemId, Integer num) {
		 * try { // ��redis��ȡ�����ﳵ���ж��Ƿ��Ѿ��й����� Boolean hexists =
		 * jedisClient.hexists(CART_REDIS_KEY_PRE + ":" + userId + "", itemId + ""); if
		 * (hexists) { // ��ʾ���ﳵ���Ѿ��и���Ʒ��ֻ��Ҫ������Ʒ��������Ӽ��� String hget =
		 * jedisClient.hget(CART_REDIS_KEY_PRE + ":" + userId + "", itemId + ""); //
		 * ��������� TbItem item = JsonUtils.jsonToPojo(hget, TbItem.class);
		 * item.setNum(item.getNum() + num); // ����Ʒ���·��빺�ﳵ��
		 * jedisClient.hset(CART_REDIS_KEY_PRE + ":" + userId + "", itemId + "",
		 * JsonUtils.objectToJson(item)); return E3Result.ok(); }
		 * 
		 * // ��ʾ���ﳵ��û��Ҫ��ӵ���Ʒ��Ϣ // ������Ʒ��id��ѯ��Ʒ����Ϣ TbItem item =
		 * itemMapper.selectByPrimaryKey(itemId); item.setNum(num); if
		 * (StringUtils.isNotBlank(item.getImage())) {
		 * item.setImage(item.getImage().split(",")[0]); } // ����Ʒ��Ϣ���빺�ﳵ��
		 * jedisClient.hset(CART_REDIS_KEY_PRE + ":" + userId + "", itemId + "",
		 * JsonUtils.objectToJson(item)); return E3Result.ok(); } catch (Exception e) {
		 * e.printStackTrace(); } return E3Result.build(400, "��Ʒ��ӹ��ﳵʧ��");
		 * 
		 * } }
		 */