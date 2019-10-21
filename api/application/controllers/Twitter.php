<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Twitter extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('twitterlib');
    }

	public function stream()
    {
        $this->twitterlib->stream();
    }

    // search for tweets by hashtag
    public function search($cachetime=null)
    {
        $this->twitterlib->search($cachetime);
    }

    // search for tweets by hashtag using api v1.1
    public function searchone($cachetime=null)
    {
      $this->twitterlib->searchone($cachetime);
    }

}

/* End of file Twitter.php */
/* Location: ./application/controllers/Twitter.php */