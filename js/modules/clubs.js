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
    }
  });

  app.mount("#team-select");
}
