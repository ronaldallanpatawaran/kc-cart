<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['text_parts_services'] = $this->language->get('text_parts_services');
		$data['text_product_categories'] = $this->language->get('text_product_categories');
		$data['text_legalities'] = $this->language->get('text_legalities');
		$data['button_contactus'] = $this->language->get('button_contactus');
		$data['button_view_products'] = $this->language->get('button_view_products');

		$data['telephone'] = $this->config->get('config_telephone');
		$data['address'] = $this->config->get('config_address');

		$this->load->model('catalog/category');
		$data['categories'] = $this->model_catalog_category->getCategoriesWithFilters(array('limit'=> 2, 'start'=> 0));

		$data['product_category'] = $this->url->link('product/category');

		$this->load->language('information/contact');
		$data['text_telephone'] = $this->language->get('text_telephone');
		$data['text_address'] = $this->language->get('text_address');

		$data['text_fb'] = $this->language->get('text_fb');
		$data['text_tw'] = $this->language->get('text_tw');
		$data['text_ig'] = $this->language->get('text_ig');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['product'] = $this->url->link('product/category');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');
		

		$data['url_fb'] = $this->config->get('config_fb_url');
		$data['url_tw'] = $this->config->get('config_tw_url');
		$data['url_ig'] = $this->config->get('config_ig_url');

		$data['powered'] = sprintf($this->language->get('text_powered'), date('Y', time()), $this->config->get('config_name'));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}
		
		$data['content_footer'] = $this->load->controller('common/content_footer');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}