{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:
buildExtension {
  name = "flux-trainer";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "kijai";
    repo = "ComfyUI-FluxTrainer";
    fetchSubmodules = false;
    rev = "09fef403d12affdf2f035ac0c39a4668d25ad881";
    hash = "sha256-62X7fgVvXYRfDDaBzQ1lWiMehezikwqrEnsuGa2rmlk=";
  };

  propagatedBuildInputs = [
    python3.pkgs.accelerate
    # numpy<=1.26.4
    python3.pkgs.transformers
    python3.pkgs.diffusers
    python3.pkgs.ftfy
    python3.pkgs.opencv-python
    python3.pkgs.einops
    python3.pkgs.bitsandbytes
    python3.pkgs.prodigyopt
    python3.pkgs.lion-pytorch
    python3.pkgs.safetensors
    python3.pkgs.altair
    python3.pkgs.toml
    python3.pkgs.voluptuous
    python3.pkgs.huggingface-hub
    # python3.pkgs.# for Image utils
    python3.pkgs.imagesize
    python3.pkgs.rich
    python3.pkgs.came_pytorch
    python3.pkgs.matplotlib
    # python3.pkgs.# for T5XXL tokenizer (SD3/FLUX)
    python3.pkgs.sentencepiece
    python3.pkgs.protobuf
    python3.pkgs.schedulefree
    python3.pkgs.prodigy-plus-schedule-free
  ];

  meta = {
    license = lib.licenses.asl20;
  };
}
