<template>
  <section id="features" class="features">
    <div class="container">
      <div class="section-header">
        <h2 class="section-title">一個平台，覆蓋全業務場景</h2>
        <p class="section-desc">從製造到貿易、從業務到財務，EcoBridge 讓每一個部門都在同一個資訊網路中協作。</p>
      </div>

      <div class="features__grid">
        <div
          v-for="feature in features"
          :key="feature.title"
          class="feature-card"
        >
          <div class="feature-card__icon">{{ feature.icon }}</div>
          <h3 class="feature-card__title">{{ feature.title }}</h3>
          <p class="feature-card__desc">{{ feature.desc }}</p>
          <ul class="feature-card__list">
            <li v-for="item in feature.points" :key="item">
              <span class="check">✓</span>{{ item }}
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const features = [
  {
    icon: '🔗',
    title: '跨系統資訊串聯',
    desc: '打通 ERP、CRM、WMS 之間的資料壁壘，一筆訂單自動觸發全鏈路同步。',
    points: ['自動化資料流轉', 'API 開放串接', '零重複人工輸入']
  },
  {
    icon: '📄',
    title: '智慧文件協作',
    desc: '合約、報價單、出口文件實現版本管控與跨部門即時協作，不再找不到最新版。',
    points: ['版本自動管理', '電子簽核流程', '多語言文件支援']
  },
  {
    icon: '📊',
    title: '即時數據看板',
    desc: '業績、庫存、財務、客服數據即時彙總，管理層秒級掌握全局。',
    points: ['自訂 KPI 指標', '多維度交叉分析', '異常即時預警']
  },
  {
    icon: '🤖',
    title: '流程自動化引擎',
    desc: '設定觸發條件，讓重複性工作自動完成，人力專注在高價值決策。',
    points: ['拖拉式流程設計', '條件分支邏輯', '跨部門任務派發']
  },
  {
    icon: '🌏',
    title: '多市場合規支援',
    desc: '針對台灣、中國大陸、日本、歐美各地的稅務、進出口申報格式內建範本。',
    points: ['多幣別帳務', '進出口報關格式', '本地化稅務設定']
  },
  {
    icon: '🔒',
    title: '企業級安全架構',
    desc: '角色權限精細控管，所有操作留存完整稽核日誌，符合 ISO 27001 標準。',
    points: ['細粒度角色管理', '完整操作日誌', '資料加密傳輸']
  }
]
</script>

<style scoped>
.features {
  padding: var(--space-16) 0;
  background: #fff;
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
  line-height: 1.7;
}

.features__grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: var(--space-6);
}

.feature-card {
  padding: var(--space-6);
  border-radius: var(--radius-lg);
  border: 1px solid var(--color-border);
  background: var(--color-surface);
  transition: box-shadow var(--transition), transform var(--transition);
}

.feature-card:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

.feature-card__icon {
  font-size: 28px;
  margin-bottom: var(--space-4);
}

.feature-card__title {
  font-size: var(--font-size-h3);
  color: var(--color-text);
  margin-bottom: var(--space-2);
}

.feature-card__desc {
  font-size: var(--font-size-body);
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: var(--space-4);
}

.feature-card__list {
  list-style: none;
  display: flex;
  flex-direction: column;
  gap: var(--space-2);
}

.feature-card__list li {
  display: flex;
  align-items: center;
  gap: var(--space-2);
  font-size: var(--font-size-caption);
  color: var(--color-text-muted);
}

.check {
  color: var(--color-success);
  font-weight: var(--font-weight-medium);
}

@media (max-width: 1024px) {
  .features__grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 600px) {
  .features__grid {
    grid-template-columns: 1fr;
  }
}
</style>
