<template>
  <footer class="footer">
    <div class="container">
      <div class="footer__top">
        <div class="footer__brand">
          <div class="footer__logo">
            <span class="logo-mark"></span>
            <span class="logo-name">EcoBridge</span>
          </div>
          <p class="footer__tagline">讓不同行業的公司，資訊不再孤島，文件能溝通，營運能自動流動。</p>
          <div class="footer__markets">
            <span v-for="m in markets" :key="m" class="market-tag">{{ m }}</span>
          </div>
        </div>

        <div class="footer__links">
          <div v-for="group in linkGroups" :key="group.title" class="footer__link-group">
            <h4 class="footer__link-group-title">{{ group.title }}</h4>
            <ul>
              <li v-for="link in group.links" :key="link.label">
                <a href="#" class="footer__link">{{ link.label }}</a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="footer__bottom">
        <div class="footer__copyright">
          © 2025 EcoBridge. All rights reserved.
        </div>
        <div class="footer__legal">
          <a href="#" class="footer__link">隱私政策</a>
          <a href="#" class="footer__link">服務條款</a>
          <a href="#" class="footer__link">Cookie 設定</a>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup>
const markets = ['台灣', '中國大陸', '日本', '韓國', '美國', '義大利']

const linkGroups = [
  {
    title: '產品',
    links: [
      { label: '功能總覽' },
      { label: '模組介紹' },
      { label: '定價方案' },
      { label: '更新日誌' }
    ]
  },
  {
    title: '資源',
    links: [
      { label: '使用說明文件' },
      { label: 'API 開發文件' },
      { label: '導入指南' },
      { label: '案例分享' }
    ]
  },
  {
    title: '公司',
    links: [
      { label: '關於我們' },
      { label: '部落格' },
      { label: '合作夥伴' },
      { label: '聯絡我們' }
    ]
  }
]
</script>

<style scoped>
.footer {
  background: var(--color-text);
  padding: var(--space-12) 0 var(--space-6);
}

.footer__top {
  display: grid;
  grid-template-columns: 300px 1fr;
  gap: var(--space-12);
  padding-bottom: var(--space-8);
  border-bottom: 1px solid rgba(255, 255, 255, 0.08);
  margin-bottom: var(--space-6);
}

.footer__logo {
  display: flex;
  align-items: center;
  gap: var(--space-2);
  margin-bottom: var(--space-4);
}

.logo-mark {
  width: 24px;
  height: 24px;
  border-radius: var(--radius-sm);
  background: linear-gradient(135deg, var(--color-primary) 0%, var(--color-primary-dark) 100%);
  position: relative;
}

.logo-mark::after {
  content: '';
  position: absolute;
  inset: 5px;
  border-radius: 2px;
  background: var(--color-accent);
  opacity: 0.8;
}

.logo-name {
  font-size: 16px;
  font-weight: var(--font-weight-medium);
  color: #fff;
}

.footer__tagline {
  font-size: var(--font-size-caption);
  color: rgba(255, 255, 255, 0.45);
  line-height: 1.7;
  margin-bottom: var(--space-4);
}

.footer__markets {
  display: flex;
  flex-wrap: wrap;
  gap: var(--space-2);
}

.market-tag {
  font-size: 11px;
  background: rgba(255, 255, 255, 0.08);
  color: rgba(255, 255, 255, 0.5);
  padding: 2px var(--space-2);
  border-radius: var(--radius-pill);
}

.footer__links {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: var(--space-6);
}

.footer__link-group-title {
  font-size: var(--font-size-caption);
  font-weight: var(--font-weight-medium);
  color: rgba(255, 255, 255, 0.7);
  text-transform: uppercase;
  letter-spacing: 0.5px;
  margin-bottom: var(--space-4);
}

.footer__link-group ul {
  list-style: none;
  display: flex;
  flex-direction: column;
  gap: var(--space-3);
}

.footer__link {
  font-size: var(--font-size-caption);
  color: rgba(255, 255, 255, 0.4);
  transition: color var(--transition);
}

.footer__link:hover {
  color: rgba(255, 255, 255, 0.8);
}

.footer__bottom {
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: var(--space-4);
}

.footer__copyright {
  font-size: var(--font-size-caption);
  color: rgba(255, 255, 255, 0.3);
}

.footer__legal {
  display: flex;
  gap: var(--space-4);
}

@media (max-width: 900px) {
  .footer__top {
    grid-template-columns: 1fr;
  }

  .footer__links {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media (max-width: 600px) {
  .footer__links {
    grid-template-columns: repeat(2, 1fr);
  }

  .footer__bottom {
    flex-direction: column;
    align-items: flex-start;
  }
}
</style>
