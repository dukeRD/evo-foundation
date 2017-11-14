/**
 * Главная
 *
 *
 *
 * Главная страница
 * @internal    @modx_category
 */
{{template_top}}

<!-- ---------hero----------- -->
<section class="hero" style="background-image: url(tpl/dist/assets/img/hero.jpg);">
	<div class="hero__content">
		<h1 class="hero__header">Oho Studio</h1>
		<div class="hero__slogan">Создание фотозон, оформление мероприятий</div>
	</div>
</section>

<!-- ---------about----------- -->
<section class="about">
    <div class="grid-container">
        <div class="grid-x">
            <div class="cell small-12 medium-6">
                <div class="about__content">
                    <h2 class="section-header">[*longtitle*]</h2>
                    <div class="about__text">[*content*]</div>
                    <a href="[~2~]" class="button">Смотреть работы</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ---------services-home----------- -->
<section class="services-home">
	<h2 class="section-header">Наши услуги</h2>
	{{services}}
</section>

<!-- ---------portfolio-home----------- -->
<section class="portfolio-home">
    <div class="grid-container">
        <div class="grid-x">
            <div class="cell small-12 text-center">
                <h2 class="section-header">Наши работы</h2>
                <div class="portfolio-home__text">
                    По вашему желанию оформляем любой праздник цветами, тканью и аксессуарами.
                </div>
                <a href="[~2~]" class="portfolio-home__button button">Смотреть работы</a>
            </div>
        </div>
    </div>
    <div class="portfolio-home__wrapper medium-margin-collapse">
        <div class="portfolio-home__item">
            <img src="tpl/dist/assets/img/home-portfolio-1.jpg" alt="" class="portfolio-home__img">
            <a href="portfolio.html" class="portfolio-home__link">
                <div class="portfolio-home__description">
                    <h5 class="portfolio-home__name">Название проекта </h5>
                    <span class="portfolio-home__text">категория проекта</span>
                </div>
            </a>
        </div>
        <div class="portfolio-home__item">
            <img src="tpl/dist/assets/img/home-portfolio-2.jpg" alt="" class="portfolio-home__img">
            <a href="portfolio.html" class="portfolio-home__link">
                <div class="portfolio-home__description">
                    <h5 class="portfolio-home__name">Название проекта </h5>
                    <span class="portfolio-home__text">категория проекта</span>
                </div>
            </a>
        </div>
    </div>
</section>

<!-- ---------quotes----------- -->
<section class="quotes">
	<div class="quotes__content">
		<div class="quotes__text">Привет, меня зовут Анастасия. Я - создатель студии Oho Studio. У нас огромный склад элементов и предметов декора, текстиля и посуды, что позволяет нам минимизировать бюджеты на оформление свадеб!</div>
	</div>
</section>

<!-- ---------contacts-home----------- -->
<section class="contacts-home">
	<div class="contacts-home__map">
		{{map}}
	</div>
	<div class="grid-container">
		<div class="grid-x">
			<div class="contacts-home__content">
				<h2 class="section-header">Контакты</h2>
				<div class="contacts-home__address">

                    <div class="contacts-home__title">Адрес</div>
                    <div class="contacts-home__value">[(cfg_contact-address)]</div>
                    <div class="contacts-home__title">Телефон</div>
                    <div class="contacts-home__value">[(cfg_contact-phone)]</div>
                    <div class="contacts-home__title">Почта</div>
                    <div class="contacts-home__value">[(cfg_contact-email)]</div>



				</div>
			</div>
		</div>
	</div>
</section>



{{template_bottom}}