from scihub import SciHub

sh = SciHub()

results = sh.download(
    'https://www.sciencedirect.com/science/article/abs/pii/S0262885612001850?via%3Dihub', path='paper.pdf')
