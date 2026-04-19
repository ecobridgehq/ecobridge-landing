<template>
  <section id="testimonials" class="testimonials">
    <div class="container">
      <div class="section-header">
        <h2 class="section-title">客戶怎麼說</h2>
        <p class="section-desc">來自台灣、大陸、日本各行業的真實回饋</p>
      </div>

      <div class="testimonials__grid">
        <div
          v-for="t in testimonials"
          :key="t.name"
          class="testimonial-card"
          :class="{ 'testimonial-card--featured': t.featured }"
        >
          <div class="testimonial-card__quote">{{ t.quote }}</div>
          <div class="testimonial-card__footer">
            <div class="avatar">{{ t.initials }}</div>
            <div class="testimonial-card__author">
              <div class="author-name">{{ t.name }}</div>
              <div class="author-role">{{ t.role }}</div>
            </div>
          </div>
          <div class="testimonial-card__tag">{{ t.industry }}</div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const testimonials = [
  {
    quote: '導入 EcoBridge 後，我們的業務訂單到倉庫出貨的流程從 4 小時縮短到 20 分鐘，人工錯誤率幾乎歸零。這是我們做過最值得的系統投資。',
    name: '陳俊宏',
    role: '總經理 · 台灣精密零件製造商',
    initials: '陳',
    industry: '製造業',
    featured: true
  },
  {
    quote: 'EcoBridge 的進出口文件模組幫我們節省了大量重複填寫的時間，而且支援台灣和大陸兩種格式，跨境業務再也不混亂了。',
    name: '李美玲',
    role: '進出口部主管 · 兩岸貿易公司',
    initials: '李',
    industry: '進出口貿易',
    featured: false
  },
  {
    quote: '我們跨了三個國家的業務，以前每個市場用不同系統，報表整合是噩夢。現在 EcoBridge 統一管理，月底結帳從 3 天縮短到半天。',
    name: '山田健太',
    role: 'CFO · 日台跨境電商集團',
    initials: '山',
    industry: '電商零售',
    featured: false
  },
  {
    quote: '資料看板讓我每天早上 5 分鐘就能掌握所有門市的庫存與業績，再也不需要等 Excel 彙整。管理層的決策速度快了很多。',
    name: '王志遠',
    role: '營運長 · 連鎖餐飲集團（12 門市）',
    initials: '王',
    industry: '餐飲零售',
    featured: false
  },
  {
    quote: '我們公司剛創業，EcoBridge 的模組化設計讓我們可以按需開通，不用一次付全套費用，非常適合成長型企業。',
    name: '吳佳慧',
    role: '共同創辦人 · 新創品牌電商',
    initials: '吳',
    industry: '新創',
    featured: false
  }
]
</script>

<style scoped>
.testimonials {
  padding: var(--space-16) 0;
  background: var(--color-surface);
}

.section-header {
  text-align: center;
  max-width: 600px;
  margin: 0 auto var(--space-12);
}

.section-title {
  color: var(--color-text);
  margin-bottom: var(--space-3);
}

.section-desc {
  color: var(--color-text-muted);
  font-size: 16px;
}

.testimonials__grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: auto auto;
  gap: var(--space-6);
}

.testimonials__grid .testimonial-card:first-child {
  grid-column: 1 / -1;
  display: grid;
  grid-template-columns: 1fr auto;
  grid-template-rows: 1fr auto;
  column-gap: var(--space-8);
}

.testimonial-card {
  background: #fff;
  border: 1px solid var(--color-border);
  border-radius: var(--radius-lg);
  padding: var(--space-6);
  position: relative;
  transition: box-shadow var(--transition);
}

.testimonial-card:hover {
  box-shadow: var(--shadow-md);
}

.testimonial-card--featured {
  background: var(--color-primary-dark);
  border-color: transparent;
}

.testimonial-card--featured .testimonial-card__quote {
  color: rgba(255, 255, 255, 0.9);
  font-size: 17px;
}

.testimonial-card--featured .author-name {
  color: #fff;
}

.testimonial-card--featured .author-role {
  color: rgba(255, 255, 255, 0.6);
}

.testimonial-card--featured .testimonial-card__tag {
  background: rgba(255, 255, 255, 0.12);
  color: rgba(255, 255, 255, 0.7);
}

.testimonial-card__quote {
  font-size: var(--font-size-body);
  color: var(--color-text);
  line-height: 1.75;
  margin-bottom: var(--space-6);
  position: relative;
}

.testimonial-card__quote::before {
  content: '"';
  font-size: 48px;
  line-height: 1;
  color: var(--color-primary-light);
  position: absolute;
  top: -8px;
  left: -4px;
  font-family: serif;
}

.testimonial-card--featured .testimonial-card__quote::before {
  color: rgba(255, 255, 255, 0.15);
}

.testimonial-card__footer {
  display: flex;
  align-items: center;
  gap: var(--space-3);
}

.avatar {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background: var(--color-primary-light);
  color: var(--color-primary-dark);
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: var(--font-weight-medium);
  font-size: 15px;
  flex-shrink: 0;
}

.testimonial-card--featured .avatar {
  background: rgba(255, 255, 255, 0.18);
  color: #fff;
}

.author-name {
  font-size: var(--font-size-body);
  font-weight: var(--font-weight-medium);
  color: var(--color-text);
}

.author-role {
  font-size: var(--font-size-caption);
  color: var(--color-text-hint);
  margin-top: 2px;
}

.testimonial-card__tag {
  position: absolute;
  top: var(--space-4);
  right: var(--space-4);
  font-size: 11px;
  background: var(--color-accent-light);
  color: var(--color-accent-dark);
  padding: 2px var(--space-2);
  border-radius: var(--radius-pill);
  font-weight: var(--font-weight-medium);
}

@media (max-width: 900px) {
  .testimonials__grid {
    grid-template-columns: 1fr 1fr;
  }

  .testimonials__grid .testimonial-card:first-child {
    grid-column: 1 / -1;
    grid-template-columns: 1fr;
  }
}

@media (max-width: 600px) {
  .testimonials__grid {
    grid-template-columns: 1fr;
  }
}
</style>
