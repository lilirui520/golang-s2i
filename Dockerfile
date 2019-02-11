FROM centos/go-toolset-7-centos7
USER root 
RUN rm -rf /etc/yum.repos.d/*
ADD  centos-base.repo /etc/yum.repos.d/centos-base.repo
ADD  epel.repo /etc/yum.repos.d/epel.repo
##RUN  yum install -y  --nogpgcheck  bzip2-devel freetype-devel libjpeg-devel libpng-devel libtiff-devel giflib-devel zlib-devel ghostscript-devel djvulibre-devel libwmf-devel jasper-devel libtool-ltdl-devel libX11-devel libXext-devel libXt-devel lcms-devel libxml2-devel librsvg2-devel OpenEXR-devel
RUN  yum install -y --nogpgcheck  gcc GraphicsMagick-devel
RUN  yum clean all
USER 1001
