<template>
  <div id="ecobridge-app">
    <NavBar />
    <main>
      <HeroSection />
      <FeatureSection />
      <StatsSection />
      <TestimonialSection />
      <CtaSection />
    </main>
    <FooterSection />
  </div>
</template>

<script setup>
import NavBar from './Components/NavBar.vue'
import HeroSection from './Components/HeroSection.vue'
import FeatureSection from './Components/FeatureSection.vue'
import StatsSection from './Components/StatsSection.vue'
import TestimonialSection from './Components/TestimonialSection.vue'
import CtaSection from './Components/CtaSection.vue'
import FooterSection from './Components/FooterSection.vue'
</script>

<style scoped>
#ecobridge-app {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

main {
  flex: 1;
}
</style>
