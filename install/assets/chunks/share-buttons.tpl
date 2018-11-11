/**
 * share-buttons
 *
 * Кнопки Поделиться 
 *
 * @category	chunk
 * @internal @modx_category Blocks
 */
<div class="more-info__social">
            <div class="row">
                <div class="col-12 text-center">
                    <h2 class="more-info__social_title">
                        Поделиться с друзьями
                    </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2 offset-lg-3 text-center">
                    <a href="https://www.facebook.com/sharer.php?u=[(site_url)][~[*id*]~]" 
					   class="more-info__social_btn-fac" 
					   target="_blank" rel="noopener noreferrer">
                        FACEBOOK
                    </a>
                </div>
                <div class="col-lg-2 text-center">
                    <a href="https://vk.com/share.php?url=[(site_url)][~[*id*]~]" 
					   class="more-info__social_btn-vk"
   					   target="_blank" rel="noopener noreferrer">

                        VKONTAKTE
                    </a>
                </div>
                <div class="col-lg-2 text-center">
                    <a href="https://connect.ok.ru/offer?url=[(site_url)][~[*id*]~]" 
					   class="more-info__social_btn-ok"
					   target="_blank" rel="noopener noreferrer">

                        Одноклассники
                    </a>
                </div>
            </div>
        </div>