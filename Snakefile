
configfile: "config.yaml"


rule get_genome:
   output:
         fastA="reference/genome.fa",
         gtf="reference/genome.gtf"
    shell:
         """
         wget -nc -O - config['genome_fasta'] | gunzip -c - > {output.fastA}
         wget -nc -O - config['genome_gtf']  | gunzip -c - > {output.gtf}
         """
