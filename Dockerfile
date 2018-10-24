FROM biocontainers/samtools:v1.3_cv2

# override parent image CMD setting
CMD []

RUN apt-get update

COPY extractBamID.sh /

RUN chmod +x extractBamID.sh