export function clubData() {
  const app = Vue.createApp({
    created() {
      fetch("http://localhost/JQRN_Vue_ajax/backend/public/clubs")
        .then(response => response.json())
        .then(data => {
          this.clubsData = data;
          this.loadingClubs = false;
          this.selectClub(data[0]);
        })
        .catch(error => {
          console.error("Error fetching teams:", error);
          this.error = "Failed to load team data.";
        });
    },
    data() {
      return {
        clubsData: [],
        players: [],
        selectedClub: null,
        error: "",
        loadingClubs: true,
        loadingClubInfo: false,
        loadingPlayers: false
      };
    },
    methods: {
      selectClub(club) {
        this.selectedClub = club;
        this.players = [];
        this.error = "";
        this.loadingClubInfo = true;
        this.loadingPlayers = true;

        fetch(`http://localhost/JQRN_Vue_ajax/backend/public/players/club/${club.id}`)
        .then(response => response.json())
        .then(data => {
          this.loadingPlayers = false;

          this.players = data.results;
          this.loadingClubInfo = false;
        })
        .catch(error => {
          console.error("Error fetching players:", error);
          this.loadingClubInfo = false;
        });
      }
    },
    mounted() {
      const slideUp = document.querySelectorAll('.slide-up'),
      slideLeft = document.querySelectorAll('.slide-left'),
      fade = document.querySelectorAll('.fade');

      gsap.registerPlugin(ScrollTrigger);

      if (window.innerWidth >= 412) {
        slideUp.forEach(container => {
            gsap.fromTo(container, {opacity: 0, y: 50},
                {opacity: 1, y: 0, duration: 1, ease: 'power.out',
                    scrollTrigger: {trigger: container, start: 'top center'}
                });
        });

        slideLeft.forEach(container => {
            gsap.fromTo(container, {opacity: 0, x: -30},
                {delay: 0.5, opacity: 1, x: 0, duration: 0.5, ease: 'power.out',
                    scrollTrigger: {trigger: container, start: 'top center'}
                });
        });

        fade.forEach(container => {
          gsap.fromTo(container, {opacity: 0, y: 20},
              {delay: 0.5, opacity: 1, y: 0, duration: 1, ease: 'power.out',
                  scrollTrigger: {trigger: container, start: 'center center'}
              });
        });
      }
    }
  });

  app.mount("#team-select");
}
