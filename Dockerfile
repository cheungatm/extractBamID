FROM biocontainers/samtools:v1.3_cv2

# override parent image CMD setting
CMD []

COPY extractBamID.sh /

RUN chmod u+x /extractBamID.sh