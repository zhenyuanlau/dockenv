FROM jupyter/scipy-notebook:2023-02-28

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
RUN cargo install evcxr_jupyter
RUN evcxr_jupyter --install
