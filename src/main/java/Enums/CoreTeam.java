package Enums;
public class CoreTeam {
    public enum Team{
        Amit("Amit More", "Founder & CEO", "image/amit.jpg","Amit brings vision, business strategy and core financial sector domain knowledge to Finzy. Amit is an expert in the Indian Banking & Financial Services industry with over 16 years of experience across ICICI Bank, Credit Suisse AG and Edelweiss."),
        Abhinandan("Abhinandan Sangam","Co-founder & CTO","image/abhinadan.jpg","Abhinandan is an expert in building capabilities across geographies. He oversees Tech and Product at finzy and has over 19 years of experience with organizations like ThoughtWorks, Sabre, MindTree, Siemens, Amadeus."),
        Vishwas("Vishwas Dixit","Co-founder & CMO","image/vishwas.jpg","Vishwas is the face of Finzy. With 23 years of Sales, Marketing & Distribution experience in organizations like Toyota, TVS and Dunlop,he brings in expertise in market expansion projects and creating distribution networks"),
        Apporv("Apoorv Gawde","CIO & Head of Product","image/apoorve.jpg","Apoorv has over 13 years of experience in envisioning and building digital products. He has worked across the globe to create and deliver products. With a passion for experience design, at finzy, he focuses on product strategy and service design.");

        public String name;
        public String designation;
        public String image;
        public String about;
        Team(String name, String designation, String image,String about) {
            this.name=name;
            this.designation=designation;
            this.image=image;
            this.about=about;
        }

    }
}