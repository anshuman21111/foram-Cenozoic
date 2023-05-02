# Biogeographic responses in marine plankton functional groups to Cenozoic climatic and environmental changes #
**Team members:**  Anshuman Swain<sup>1,2,3,4,* </sup>, Adam Woodhouse<sup>5,* </sup>, William F. Fagan<sup>4</sup>, Andrew J. Fraass<sup>6</sup>, and Christopher M. Lowery<sup>5</sup>


<sup>1</sup>Department of Organismic and Evolutionary Biology, Harvard University, Cambridge, MA 02138, U.S.A
<sup>2</sup>Museum of Comparative Zoology, Harvard University, Cambridge, MA 02138, U.S.A.
<sup>3</sup>Department of Paleobiology, National Museum of Natural History, Washington, D.C. 20013, U.S.A.
<sup>4</sup>Department of Biology, University of Maryland, College Park, MD 20742, U.S.A.
<sup>5</sup>University of Texas Institute for Geophysics, University of Texas at Austin, Austin, TX 78712, U.S.A.
<sup>6</sup>School of Earth and Ocean Sciences, University of Victoria, Victoria, BC V8P 3E6, Canada

<sup>* </sup>equal contribution, first co-authors



**Keywords:** Triton, Foraminifera, Bipartite networks, Cenozoic



## Brief introduction to the project ##
This project aims to use foraminiferal global occurrence data for understanding marine biogeography dynamics using a bipartite network approach. We look at the problem by quantifying group diversity, latitudinal specialization, and latitudinal equitability for planktonic foraminifera over the last 66 Ma using Triton, a recently developed high-resolution global dataset of planktonic foraminiferal occurrences.


## Short Description of the files in this repository ##

**Base scripts in R** 
- `data partition.R`: Data partitioning script to categorize the original binned data from Triton based on 250 ky bin resolution. 
- `network properties.R`: Calculate network properties at the node level using 'bipartite' R library, but we will only adapt Degree, Species specificity Index and Paired Different Index for our purpose.
- `foram_stat_sigmoids.Rmd`: Functional fits to the values of specialization and richness. See data in `R_baseScripts\data_sigmoid`
- `functional diversity.R`: Functional and species Shannon doversity caclulation.

Main data is from Fenton, I. S., Woodhouse, A., Aze, T., Lazarus, D., Renaudie, J., Dunhill, A. M., ... & Saupe, E. E. (2021). Triton, a new species-level database of Cenozoic planktonic foraminiferal occurrences. Scientific Data, 8(1), 160.
