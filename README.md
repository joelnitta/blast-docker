# blast-docker

[Dockerfile](https://github.com/joelnitta/blast-docker/blob/master/Dockerfile) and [image](https://hub.docker.com/r/joelnitta/blast/) for running [BLAST](https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=Download).

Version: 2.6.0-1

## Example Usage

Pull the most recent build:

```
docker pull joelnitta/blast
```

Launch the container:

```
docker run --rm -it joelnitta/blast
```

Or, run blast commands directly from docker by mounting a volume containing the BLAST query and database files (here, `/working/dir`):

```
docker run --rm --entrypoint blastn -v /working/dir:/home joelnitta/blast -query my_seq.fasta -db my_database -out results.txt
```
