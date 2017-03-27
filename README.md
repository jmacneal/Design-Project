# Design-Project
Code repository for ECSE 456/457 - Design Project

In the `FFT_HDL` directory, you will find our MatLab implementations which are
to be synthesized to hardware. Since we are using the HDL coder MatLab
toolkit and it does not support the built-in `exp` function in MatLab, the
`generate_lookup_table.m` script generates a MatLab function `exp_lookup.m`
which is then used in the FFT and IFFT scripts.
