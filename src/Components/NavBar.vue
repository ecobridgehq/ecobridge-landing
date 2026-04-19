<template>
  <header class="navbar" :class="{ 'navbar--scrolled': scrolled }">
    <div class="container navbar__inner">
      <a href="#" class="navbar__brand">
        <span class="navbar__logo-mark"></span>
        <span class="navbar__brand-name">EcoBridge</span>
      </a>

      <nav class="navbar__nav" :class="{ 'navbar__nav--open': menuOpen }">
        <a href="#features" class="navbar__link" @click="closeMenu">功能特色</a>
        <a href="#stats" class="navbar__link" @click="closeMenu">平台數據</a>
        <a href="#testimonials" class="navbar__link" @click="closeMenu">客戶見證</a>
        <a href="#cta" class="btn btn-primary btn-md navbar__cta" @click="closeMenu">免費試用</a>
      </nav>

      <button class="navbar__hamburger" @click="toggleMenu" :aria-expanded="menuOpen" aria-label="開啟選單">
        <span></span><span></span><span></span>
      </button>
    </div>
  </header>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const scrolled = ref(false)
const menuOpen = ref(false)

function handleScroll() {
  scrolled.value = window.scrollY > 40
}

function toggleMenu() {
  menuOpen.value = !menuOpen.value
}

function closeMenu() {
  menuOpen.value = false
}

onMounted(() => window.addEventListener('scroll', handleScroll))
onUnmounted(() => window.removeEventListener('scroll', handleScroll))
</script>

<style scoped>
.navbar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 100;
  background: rgba(242, 240, 236, 0.92);
  backdrop-filter: blur(12px);
  border-bottom: 1px solid transparent;
  transition: border-color var(--transition), box-shadow var(--transition);
}

.navbar--scrolled {
  border-color: var(--color-border);
  box-shadow: var(--shadow-sm);
}

.navbar__inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 64px;
}

.navbar__brand {
  display: flex;
  align-items: center;
  gap: var(--space-2);
}

.navbar__logo-mark {
  width: 28px;
  height: 28px;
  border-radius: var(--radius-md);
  background: linear-gradient(135deg, var(--color-primary) 0%, var(--color-primary-dark) 100%);
  position: relative;
}

.navbar__logo-mark::after {
  content: '';
  position: absolute;
  inset: 6px;
  border-radius: 3px;
  background: var(--color-accent);
  opacity: 0.7;
}

.navbar__brand-name {
  font-size: 18px;
  font-weight: var(--font-weight-medium);
  color: var(--color-primary-dark);
  letter-spacing: -0.3px;
}

.navbar__nav {
  display: flex;
  align-items: center;
  gap: var(--space-6);
}

.navbar__link {
  font-size: var(--font-size-body);
  color: var(--color-text-muted);
  transition: color var(--transition);
}

.navbar__link:hover {
  color: var(--color-primary-dark);
}

.navbar__cta {
  margin-left: var(--space-2);
}

.navbar__hamburger {
  display: none;
  flex-direction: column;
  gap: 5px;
  background: none;
  padding: var(--space-1);
}

.navbar__hamburger span {
  display: block;
  width: 22px;
  height: 2px;
  background: var(--color-text);
  border-radius: 2px;
  transition: all var(--transition);
}

@media (max-width: 768px) {
  .navbar__hamburger {
    display: flex;
  }

  .navbar__nav {
    display: none;
    position: absolute;
    top: 64px;
    left: 0;
    right: 0;
    background: var(--color-surface);
    flex-direction: column;
    padding: var(--space-4) var(--space-6);
    gap: var(--space-4);
    border-bottom: 1px solid var(--color-border);
    box-shadow: var(--shadow-md);
  }

  .navbar__nav--open {
    display: flex;
  }

  .navbar__cta {
    margin-left: 0;
    width: 100%;
  }
}
</style>
