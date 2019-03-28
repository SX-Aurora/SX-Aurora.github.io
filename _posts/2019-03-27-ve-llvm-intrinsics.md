---
layout: post
title: VE LLVM Intrinsics
author: Erich Focht
excerpt: "The VE intrinsics available in the LLVM backend for the SX-Aurora TSUBASA Vector Engine"
category: posts
tags: [llvm, compiler, vector, sxaurora, intrinsics, builtins]
---


## 0 Vector Transfer Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| VLD | __vr _ve_vld_vss(unsigned long int sy, void const* sz) | vld |  |
| VLD | __vr _ve_vld_vss(unsigned long int I, void const* sz) | vld |  |
| VLDU | __vr _ve_vldu_vss(unsigned long int sy, void const* sz) | vldu |  |
| VLDU | __vr _ve_vldu_vss(unsigned long int I, void const* sz) | vldu |  |
| VLDL | __vr _ve_vldlsx_vss(unsigned long int sy, void const* sz) | vldl.sx |  |
| VLDL | __vr _ve_vldlsx_vss(unsigned long int I, void const* sz) | vldl.sx |  |
| VLDL | __vr _ve_vldlzx_vss(unsigned long int sy, void const* sz) | vldl.zx |  |
| VLDL | __vr _ve_vldlzx_vss(unsigned long int I, void const* sz) | vldl.zx |  |
| VLD2D | __vr _ve_vld2d_vss(unsigned long int sy, void const* sz) | vld2d |  |
| VLD2D | __vr _ve_vld2d_vss(unsigned long int I, void const* sz) | vld2d |  |
| VLDU2D | __vr _ve_vldu2d_vss(unsigned long int sy, void const* sz) | vldu2d |  |
| VLDU2D | __vr _ve_vldu2d_vss(unsigned long int I, void const* sz) | vldu2d |  |
| VLDL2D | __vr _ve_vldl2dsx_vss(unsigned long int sy, void const* sz) | vldl2d.sx |  |
| VLDL2D | __vr _ve_vldl2dsx_vss(unsigned long int I, void const* sz) | vldl2d.sx |  |
| VLDL2D | __vr _ve_vldl2dzx_vss(unsigned long int sy, void const* sz) | vldl2d.zx |  |
| VLDL2D | __vr _ve_vldl2dzx_vss(unsigned long int I, void const* sz) | vldl2d.zx |  |
| VST | void _ve_vst_vss(__vr vx, unsigned long int sy, void* sz) | vst |  |
| VST | void _ve_vst_vss(__vr vx, unsigned long int I, void* sz) | vst |  |
| VST | void _ve_vstot_vss(__vr vx, unsigned long int sy, void* sz) | vst.ot |  |
| VST | void _ve_vstot_vss(__vr vx, unsigned long int I, void* sz) | vst.ot |  |
| VSTU | void _ve_vstu_vss(__vr vx, unsigned long int sy, void* sz) | vstu |  |
| VSTU | void _ve_vstu_vss(__vr vx, unsigned long int I, void* sz) | vstu |  |
| VSTU | void _ve_vstuot_vss(__vr vx, unsigned long int sy, void* sz) | vstu.ot |  |
| VSTU | void _ve_vstuot_vss(__vr vx, unsigned long int I, void* sz) | vstu.ot |  |
| VSTL | void _ve_vstl_vss(__vr vx, unsigned long int sy, void* sz) | vstl |  |
| VSTL | void _ve_vstl_vss(__vr vx, unsigned long int I, void* sz) | vstl |  |
| VSTL | void _ve_vstlot_vss(__vr vx, unsigned long int sy, void* sz) | vstl.ot |  |
| VSTL | void _ve_vstlot_vss(__vr vx, unsigned long int I, void* sz) | vstl.ot |  |
| VST2D | void _ve_vst2d_vss(__vr vx, unsigned long int sy, void* sz) | vst2d |  |
| VST2D | void _ve_vst2d_vss(__vr vx, unsigned long int I, void* sz) | vst2d |  |
| VST2D | void _ve_vst2dot_vss(__vr vx, unsigned long int sy, void* sz) | vst2d.ot |  |
| VST2D | void _ve_vst2dot_vss(__vr vx, unsigned long int I, void* sz) | vst2d.ot |  |
| VSTU2D | void _ve_vstu2d_vss(__vr vx, unsigned long int sy, void* sz) | vstu2d |  |
| VSTU2D | void _ve_vstu2d_vss(__vr vx, unsigned long int I, void* sz) | vstu2d |  |
| VSTU2D | void _ve_vstu2dot_vss(__vr vx, unsigned long int sy, void* sz) | vstu2d.ot |  |
| VSTU2D | void _ve_vstu2dot_vss(__vr vx, unsigned long int I, void* sz) | vstu2d.ot |  |
| VSTL2D | void _ve_vstl2d_vss(__vr vx, unsigned long int sy, void* sz) | vstl2d |  |
| VSTL2D | void _ve_vstl2d_vss(__vr vx, unsigned long int I, void* sz) | vstl2d |  |
| VSTL2D | void _ve_vstl2dot_vss(__vr vx, unsigned long int sy, void* sz) | vstl2d.ot |  |
| VSTL2D | void _ve_vstl2dot_vss(__vr vx, unsigned long int I, void* sz) | vstl2d.ot |  |
| PFCHV | void _ve_pfchv(long int sy, void const* sz) | pfchv |  |
| PFCHV | void _ve_pfchv(long int I, void const* sz) | pfchv |  |
| LSV | __vr _ve_lsv_vvss(__vr vx, unsigned int sy, unsigned long int sz) | lsv |  |
| LVS | unsigned long int _ve_lvs_svs_u64(__vr vx, unsigned int sy) | lvs |  |
| LVS | double _ve_lvs_svs_f64(__vr vx, unsigned int sy) | lvs |  |
| LVS | float _ve_lvs_svs_f32(__vr vx, unsigned int sy) | lvs |  |
| LVM | __vm256 _ve_lvm_mmss(__vm256 vmd, unsigned long int sy, unsigned long int sz) | lvm |  |
| LVM | __vm256 _ve_lvm_mmss(__vm256 vmd, unsigned long int N, unsigned long int sz) | lvm |  |
| LVM | __vm512 _ve_lvm_MMss(__vm512 vmd, unsigned long int N, unsigned long int sz) | lvm |  |
| SVM | unsigned long int _ve_svm_sms(__vm256 vmz, unsigned long int sy) | svm |  |
| SVM | unsigned long int _ve_svm_sms(__vm256 vmz, unsigned long int N) | svm |  |
| SVM | unsigned long int _ve_svm_sMs(__vm512 vmz, unsigned long int N) | svm |  |
| VBRD | __vr _ve_vbrd_vs_f64(double sy) | vbrd | vx[:] = sy |
| VBRD | __vr _ve_vbrd_vsmv_f64(double sy, __vm256 vm, __vr vd) | vbrd | vx[:] = vm[:] ? sy : vd[:] |
| VBRD | __vr _ve_vbrd_vs_i64(long int sy) | vbrd | vx[:] = sy |
| VBRD | __vr _ve_vbrd_vsmv_i64(long int sy, __vm256 vm, __vr vd) | vbrd | vx[:] = vm[:] ? sy : vd[:] |
| VBRD | __vr _ve_vbrd_vs_i64(long int I) | vbrd | vx[:] = I |
| VBRD | __vr _ve_vbrd_vsmv_i64(long int I, __vm256 vm, __vr vd) | vbrd | vx[:] = vm[:] ? I : vd[:] |
| VBRD | __vr _ve_vbrdu_vs_f32(float sy) | vbrdu | vx[:] = sy |
| VBRD | __vr _ve_vbrdu_vsmv_f32(float sy, __vm256 vm, __vr vd) | vbrdu | vx[:] = vm[:] ? sy : vd[:] |
| VBRD | __vr _ve_vbrdl_vs_i32(int sy) | vbrdl | vx[:] = sy |
| VBRD | __vr _ve_vbrdl_vsmv_i32(int sy, __vm256 vm, __vr vd) | vbrdl | vx[:] = vm[:] ? sy : vd[:] |
| VBRD | __vr _ve_vbrdl_vs_i32(int I) | vbrdl | vx[:] = I |
| VBRD | __vr _ve_vbrdl_vsmv_i32(int I, __vm256 vm, __vr vd) | vbrdl | vx[:] = vm[:] ? I : vd[:] |
| VBRD | __vr _ve_pvbrd_vs_i64(unsigned long int sy) | pvbrd | vx[:] = sy |
| VBRD | __vr _ve_pvbrd_vsMv_i64(unsigned long int sy, __vm512 vm, __vr vd) | pvbrd | vx[:] = vm[:] ? sy : vd[:] |
| VMV | __vr _ve_vmv_vsv(unsigned int sy, __vr vz) | vmv |  |
| VMV | __vr _ve_vmv_vsv(unsigned int N, __vr vz) | vmv |  |

## 1 Vector Fixed-Point Arithmetic Operation Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| VADD | __vr _ve_vaddul_vvv(__vr vy, __vr vz) | vaddu.l | vx[:] = vy[:] + vz[:] |
| VADD | __vr _ve_vaddul_vsv(unsigned long int sy, __vr vz) | vaddu.l | vx[:] = sy + vz[:] |
| VADD | __vr _ve_vaddul_vsv(unsigned long int I, __vr vz) | vaddu.l | vx[:] = I + vz[:] |
| VADD | __vr _ve_vaddul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vaddu.l | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VADD | __vr _ve_vaddul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | vaddu.l | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VADD | __vr _ve_vaddul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd) | vaddu.l | vx[:] = vm[:] ? I + vz[:] : vd[:] |
| VADD | __vr _ve_vadduw_vvv(__vr vy, __vr vz) | vaddu.w | vx[:] = vy[:] + vz[:] |
| VADD | __vr _ve_vadduw_vsv(unsigned int sy, __vr vz) | vaddu.w | vx[:] = sy + vz[:] |
| VADD | __vr _ve_vadduw_vsv(unsigned int I, __vr vz) | vaddu.w | vx[:] = I + vz[:] |
| VADD | __vr _ve_vadduw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vaddu.w | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VADD | __vr _ve_vadduw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd) | vaddu.w | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VADD | __vr _ve_vadduw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd) | vaddu.w | vx[:] = vm[:] ? I + vz[:] : vd[:] |
| VADD | __vr _ve_pvaddu_vvv(__vr vy, __vr vz) | pvaddu | vx[:] = vy[:] + vz[:] |
| VADD | __vr _ve_pvaddu_vsv(unsigned long int sy, __vr vz) | pvaddu | vx[:] = sy + vz[:] |
| VADD | __vr _ve_pvaddu_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvaddu | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VADD | __vr _ve_pvaddu_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvaddu | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VADS | __vr _ve_vaddswsx_vvv(__vr vy, __vr vz) | vadds.w.sx | vx[:] = vy[:] + vz[:] |
| VADS | __vr _ve_vaddswsx_vsv(int sy, __vr vz) | vadds.w.sx | vx[:] = sy + vz[:] |
| VADS | __vr _ve_vaddswsx_vsv(int I, __vr vz) | vadds.w.sx | vx[:] = I + vz[:] |
| VADS | __vr _ve_vaddswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vadds.w.sx | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VADS | __vr _ve_vaddswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vadds.w.sx | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VADS | __vr _ve_vaddswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vadds.w.sx | vx[:] = vm[:] ? I + vz[:] : vd[:] |
| VADS | __vr _ve_vaddswzx_vvv(__vr vy, __vr vz) | vadds.w.zx | vx[:] = vy[:] + vz[:] |
| VADS | __vr _ve_vaddswzx_vsv(int sy, __vr vz) | vadds.w.zx | vx[:] = sy + vz[:] |
| VADS | __vr _ve_vaddswzx_vsv(int I, __vr vz) | vadds.w.zx | vx[:] = I + vz[:] |
| VADS | __vr _ve_vaddswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vadds.w.zx | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VADS | __vr _ve_vaddswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vadds.w.zx | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VADS | __vr _ve_vaddswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vadds.w.zx | vx[:] = vm[:] ? I + vz[:] : vd[:] |
| VADS | __vr _ve_pvadds_vvv(__vr vy, __vr vz) | pvadds | vx[:] = vy[:] + vz[:] |
| VADS | __vr _ve_pvadds_vsv(unsigned long int sy, __vr vz) | pvadds | vx[:] = sy + vz[:] |
| VADS | __vr _ve_pvadds_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvadds | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VADS | __vr _ve_pvadds_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvadds | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VADX | __vr _ve_vaddsl_vvv(__vr vy, __vr vz) | vadds.l | vx[:] = vy[:] + vz[:] |
| VADX | __vr _ve_vaddsl_vsv(long int sy, __vr vz) | vadds.l | vx[:] = sy + vz[:] |
| VADX | __vr _ve_vaddsl_vsv(long int I, __vr vz) | vadds.l | vx[:] = I + vz[:] |
| VADX | __vr _ve_vaddsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vadds.l | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VADX | __vr _ve_vaddsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd) | vadds.l | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VADX | __vr _ve_vaddsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd) | vadds.l | vx[:] = vm[:] ? I + vz[:] : vd[:] |
| VSUB | __vr _ve_vsubul_vvv(__vr vy, __vr vz) | vsubu.l | vx[:] = vy[:] - vz[:] |
| VSUB | __vr _ve_vsubul_vsv(unsigned long int sy, __vr vz) | vsubu.l | vx[:] = sy - vz[:] |
| VSUB | __vr _ve_vsubul_vsv(unsigned long int I, __vr vz) | vsubu.l | vx[:] = I - vz[:] |
| VSUB | __vr _ve_vsubul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vsubu.l | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VSUB | __vr _ve_vsubul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | vsubu.l | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VSUB | __vr _ve_vsubul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd) | vsubu.l | vx[:] = vm[:] ? I - vz[:] : vd[:] |
| VSUB | __vr _ve_vsubuw_vvv(__vr vy, __vr vz) | vsubu.w | vx[:] = vy[:] - vz[:] |
| VSUB | __vr _ve_vsubuw_vsv(unsigned int sy, __vr vz) | vsubu.w | vx[:] = sy - vz[:] |
| VSUB | __vr _ve_vsubuw_vsv(unsigned int I, __vr vz) | vsubu.w | vx[:] = I - vz[:] |
| VSUB | __vr _ve_vsubuw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vsubu.w | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VSUB | __vr _ve_vsubuw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd) | vsubu.w | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VSUB | __vr _ve_vsubuw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd) | vsubu.w | vx[:] = vm[:] ? I - vz[:] : vd[:] |
| VSUB | __vr _ve_pvsubu_vvv(__vr vy, __vr vz) | pvsubu | vx[:] = vy[:] - vz[:] |
| VSUB | __vr _ve_pvsubu_vsv(unsigned long int sy, __vr vz) | pvsubu | vx[:] = sy - vz[:] |
| VSUB | __vr _ve_pvsubu_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvsubu | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VSUB | __vr _ve_pvsubu_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvsubu | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VSBS | __vr _ve_vsubswsx_vvv(__vr vy, __vr vz) | vsubs.w.sx | vx[:] = vy[:] - vz[:] |
| VSBS | __vr _ve_vsubswsx_vsv(int sy, __vr vz) | vsubs.w.sx | vx[:] = sy - vz[:] |
| VSBS | __vr _ve_vsubswsx_vsv(int I, __vr vz) | vsubs.w.sx | vx[:] = I - vz[:] |
| VSBS | __vr _ve_vsubswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vsubs.w.sx | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VSBS | __vr _ve_vsubswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vsubs.w.sx | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VSBS | __vr _ve_vsubswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vsubs.w.sx | vx[:] = vm[:] ? I - vz[:] : vd[:] |
| VSBS | __vr _ve_vsubswzx_vvv(__vr vy, __vr vz) | vsubs.w.zx | vx[:] = vy[:] - vz[:] |
| VSBS | __vr _ve_vsubswzx_vsv(int sy, __vr vz) | vsubs.w.zx | vx[:] = sy - vz[:] |
| VSBS | __vr _ve_vsubswzx_vsv(int I, __vr vz) | vsubs.w.zx | vx[:] = I - vz[:] |
| VSBS | __vr _ve_vsubswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vsubs.w.zx | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VSBS | __vr _ve_vsubswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vsubs.w.zx | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VSBS | __vr _ve_vsubswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vsubs.w.zx | vx[:] = vm[:] ? I - vz[:] : vd[:] |
| VSBS | __vr _ve_pvsubs_vvv(__vr vy, __vr vz) | pvsubs | vx[:] = vy[:] - vz[:] |
| VSBS | __vr _ve_pvsubs_vsv(unsigned long int sy, __vr vz) | pvsubs | vx[:] = sy - vz[:] |
| VSBS | __vr _ve_pvsubs_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvsubs | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VSBS | __vr _ve_pvsubs_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvsubs | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VSBX | __vr _ve_vsubsl_vvv(__vr vy, __vr vz) | vsubs.l | vx[:] = vy[:] - vz[:] |
| VSBX | __vr _ve_vsubsl_vsv(long int sy, __vr vz) | vsubs.l | vx[:] = sy - vz[:] |
| VSBX | __vr _ve_vsubsl_vsv(long int I, __vr vz) | vsubs.l | vx[:] = I - vz[:] |
| VSBX | __vr _ve_vsubsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vsubs.l | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VSBX | __vr _ve_vsubsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd) | vsubs.l | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VSBX | __vr _ve_vsubsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd) | vsubs.l | vx[:] = vm[:] ? I - vz[:] : vd[:] |
| VMPY | __vr _ve_vmulul_vvv(__vr vy, __vr vz) | vmulu.l | vx[:] = vy[:] * vz[:] |
| VMPY | __vr _ve_vmulul_vsv(unsigned long int sy, __vr vz) | vmulu.l | vx[:] = sy * vz[:] |
| VMPY | __vr _ve_vmulul_vsv(unsigned long int I, __vr vz) | vmulu.l | vx[:] = I * vz[:] |
| VMPY | __vr _ve_vmulul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmulu.l | vx[:] = vm[:] ? vy[:] * vz[:] : vd[:] |
| VMPY | __vr _ve_vmulul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | vmulu.l | vx[:] = vm[:] ? sy * vz[:] : vd[:] |
| VMPY | __vr _ve_vmulul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd) | vmulu.l | vx[:] = vm[:] ? I * vz[:] : vd[:] |
| VMPY | __vr _ve_vmuluw_vvv(__vr vy, __vr vz) | vmulu.w | vx[:] = vy[:] * vz[:] |
| VMPY | __vr _ve_vmuluw_vsv(unsigned int sy, __vr vz) | vmulu.w | vx[:] = sy * vz[:] |
| VMPY | __vr _ve_vmuluw_vsv(unsigned int I, __vr vz) | vmulu.w | vx[:] = I * vz[:] |
| VMPY | __vr _ve_vmuluw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmulu.w | vx[:] = vm[:] ? vy[:] * vz[:] : vd[:] |
| VMPY | __vr _ve_vmuluw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd) | vmulu.w | vx[:] = vm[:] ? sy * vz[:] : vd[:] |
| VMPY | __vr _ve_vmuluw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd) | vmulu.w | vx[:] = vm[:] ? I * vz[:] : vd[:] |
| VMPS | __vr _ve_vmulswsx_vvv(__vr vy, __vr vz) | vmuls.w.sx | vx[:] = vy[:] * vz[:] |
| VMPS | __vr _ve_vmulswsx_vsv(int sy, __vr vz) | vmuls.w.sx | vx[:] = sy * vz[:] |
| VMPS | __vr _ve_vmulswsx_vsv(int I, __vr vz) | vmuls.w.sx | vx[:] = I * vz[:] |
| VMPS | __vr _ve_vmulswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmuls.w.sx | vx[:] = vm[:] ? vy[:] * vz[:] : vd[:] |
| VMPS | __vr _ve_vmulswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vmuls.w.sx | vx[:] = vm[:] ? sy * vz[:] : vd[:] |
| VMPS | __vr _ve_vmulswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vmuls.w.sx | vx[:] = vm[:] ? I * vz[:] : vd[:] |
| VMPS | __vr _ve_vmulswzx_vvv(__vr vy, __vr vz) | vmuls.w.zx | vx[:] = vy[:] * vz[:] |
| VMPS | __vr _ve_vmulswzx_vsv(int sy, __vr vz) | vmuls.w.zx | vx[:] = sy * vz[:] |
| VMPS | __vr _ve_vmulswzx_vsv(int I, __vr vz) | vmuls.w.zx | vx[:] = I * vz[:] |
| VMPS | __vr _ve_vmulswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmuls.w.zx | vx[:] = vm[:] ? vy[:] * vz[:] : vd[:] |
| VMPS | __vr _ve_vmulswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vmuls.w.zx | vx[:] = vm[:] ? sy * vz[:] : vd[:] |
| VMPS | __vr _ve_vmulswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vmuls.w.zx | vx[:] = vm[:] ? I * vz[:] : vd[:] |
| VMPX | __vr _ve_vmulsl_vvv(__vr vy, __vr vz) | vmuls.l | vx[:] = vy[:] * vz[:] |
| VMPX | __vr _ve_vmulsl_vsv(long int sy, __vr vz) | vmuls.l | vx[:] = sy * vz[:] |
| VMPX | __vr _ve_vmulsl_vsv(long int I, __vr vz) | vmuls.l | vx[:] = I * vz[:] |
| VMPX | __vr _ve_vmulsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmuls.l | vx[:] = vm[:] ? vy[:] * vz[:] : vd[:] |
| VMPX | __vr _ve_vmulsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd) | vmuls.l | vx[:] = vm[:] ? sy * vz[:] : vd[:] |
| VMPX | __vr _ve_vmulsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd) | vmuls.l | vx[:] = vm[:] ? I * vz[:] : vd[:] |
| VMPD | __vr _ve_vmulslw_vvv(__vr vy, __vr vz) | vmuls.l.w | vx[:] = vy[:] * vz[:] |
| VMPD | __vr _ve_vmulslw_vsv(int sy, __vr vz) | vmuls.l.w | vx[:] = sy * vz[:] |
| VMPD | __vr _ve_vmulslw_vsv(int I, __vr vz) | vmuls.l.w | vx[:] = I * vz[:] |
| VDIV | __vr _ve_vdivul_vvv(__vr vy, __vr vz) | vdivu.l | vx[:] = vy[:] / vz[:] |
| VDIV | __vr _ve_vdivul_vsv(unsigned long int sy, __vr vz) | vdivu.l | vx[:] = sy / vz[:] |
| VDIV | __vr _ve_vdivul_vsv(unsigned long int I, __vr vz) | vdivu.l | vx[:] = I / vz[:] |
| VDIV | __vr _ve_vdivul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vdivu.l | vx[:] = vm[:] ? vy[:] / vz[:] : vd[:] |
| VDIV | __vr _ve_vdivul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | vdivu.l | vx[:] = vm[:] ? sy / vz[:] : vd[:] |
| VDIV | __vr _ve_vdivul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd) | vdivu.l | vx[:] = vm[:] ? I / vz[:] : vd[:] |
| VDIV | __vr _ve_vdivuw_vvv(__vr vy, __vr vz) | vdivu.w | vx[:] = vy[:] / vz[:] |
| VDIV | __vr _ve_vdivuw_vsv(unsigned int sy, __vr vz) | vdivu.w | vx[:] = sy / vz[:] |
| VDIV | __vr _ve_vdivuw_vsv(unsigned int I, __vr vz) | vdivu.w | vx[:] = I / vz[:] |
| VDIV | __vr _ve_vdivuw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vdivu.w | vx[:] = vm[:] ? vy[:] / vz[:] : vd[:] |
| VDIV | __vr _ve_vdivuw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd) | vdivu.w | vx[:] = vm[:] ? sy / vz[:] : vd[:] |
| VDIV | __vr _ve_vdivuw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd) | vdivu.w | vx[:] = vm[:] ? I / vz[:] : vd[:] |
| VDIV | __vr _ve_vdivul_vvs(__vr vy, unsigned long int sy) | vdivu.l | vx[:] = vy[:] / sy |
| VDIV | __vr _ve_vdivul_vvs(__vr vy, unsigned long int I) | vdivu.l | vx[:] = vy[:] / I |
| VDIV | __vr _ve_vdivul_vvsmv(__vr vy, unsigned long int sy, __vm256 vm, __vr vd) | vdivu.l | vx[:] = vm[:] ? vy[:] / sy : vd[:] |
| VDIV | __vr _ve_vdivul_vvsmv(__vr vy, unsigned long int I, __vm256 vm, __vr vd) | vdivu.l | vx[:] = vm[:] ? vy[:] / I : vd[:] |
| VDIV | __vr _ve_vdivuw_vvs(__vr vy, unsigned int sy) | vdivu.w | vx[:] = vy[:] / sy |
| VDIV | __vr _ve_vdivuw_vvs(__vr vy, unsigned int I) | vdivu.w | vx[:] = vy[:] / I |
| VDIV | __vr _ve_vdivuw_vvsmv(__vr vy, unsigned int sy, __vm256 vm, __vr vd) | vdivu.w | vx[:] = vm[:] ? vy[:] / sy : vd[:] |
| VDIV | __vr _ve_vdivuw_vvsmv(__vr vy, unsigned int I, __vm256 vm, __vr vd) | vdivu.w | vx[:] = vm[:] ? vy[:] / I : vd[:] |
| VDVS | __vr _ve_vdivswsx_vvv(__vr vy, __vr vz) | vdivs.w.sx | vx[:] = vy[:] / vz[:] |
| VDVS | __vr _ve_vdivswsx_vsv(int sy, __vr vz) | vdivs.w.sx | vx[:] = sy / vz[:] |
| VDVS | __vr _ve_vdivswsx_vsv(int I, __vr vz) | vdivs.w.sx | vx[:] = I / vz[:] |
| VDVS | __vr _ve_vdivswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vdivs.w.sx | vx[:] = vm[:] ? vy[:] / vz[:] : vd[:] |
| VDVS | __vr _ve_vdivswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vdivs.w.sx | vx[:] = vm[:] ? sy / vz[:] : vd[:] |
| VDVS | __vr _ve_vdivswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vdivs.w.sx | vx[:] = vm[:] ? I / vz[:] : vd[:] |
| VDVS | __vr _ve_vdivswzx_vvv(__vr vy, __vr vz) | vdivs.w.zx | vx[:] = vy[:] / vz[:] |
| VDVS | __vr _ve_vdivswzx_vsv(int sy, __vr vz) | vdivs.w.zx | vx[:] = sy / vz[:] |
| VDVS | __vr _ve_vdivswzx_vsv(int I, __vr vz) | vdivs.w.zx | vx[:] = I / vz[:] |
| VDVS | __vr _ve_vdivswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vdivs.w.zx | vx[:] = vm[:] ? vy[:] / vz[:] : vd[:] |
| VDVS | __vr _ve_vdivswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vdivs.w.zx | vx[:] = vm[:] ? sy / vz[:] : vd[:] |
| VDVS | __vr _ve_vdivswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vdivs.w.zx | vx[:] = vm[:] ? I / vz[:] : vd[:] |
| VDVS | __vr _ve_vdivswsx_vvs(__vr vy, int sy) | vdivs.w.sx | vx[:] = vy[:] / sy |
| VDVS | __vr _ve_vdivswsx_vvs(__vr vy, int I) | vdivs.w.sx | vx[:] = vy[:] / I |
| VDVS | __vr _ve_vdivswsx_vvsmv(__vr vy, int sy, __vm256 vm, __vr vd) | vdivs.w.sx | vx[:] = vm[:] ? vy[:] / sy : vd[:] |
| VDVS | __vr _ve_vdivswsx_vvsmv(__vr vy, int I, __vm256 vm, __vr vd) | vdivs.w.sx | vx[:] = vm[:] ? vy[:] / I : vd[:] |
| VDVS | __vr _ve_vdivswzx_vvs(__vr vy, int sy) | vdivs.w.zx | vx[:] = vy[:] / sy |
| VDVS | __vr _ve_vdivswzx_vvs(__vr vy, int I) | vdivs.w.zx | vx[:] = vy[:] / I |
| VDVS | __vr _ve_vdivswzx_vvsmv(__vr vy, int sy, __vm256 vm, __vr vd) | vdivs.w.zx | vx[:] = vm[:] ? vy[:] / sy : vd[:] |
| VDVS | __vr _ve_vdivswzx_vvsmv(__vr vy, int I, __vm256 vm, __vr vd) | vdivs.w.zx | vx[:] = vm[:] ? vy[:] / I : vd[:] |
| VDVX | __vr _ve_vdivsl_vvv(__vr vy, __vr vz) | vdivs.l | vx[:] = vy[:] / vz[:] |
| VDVX | __vr _ve_vdivsl_vsv(long int sy, __vr vz) | vdivs.l | vx[:] = sy / vz[:] |
| VDVX | __vr _ve_vdivsl_vsv(long int I, __vr vz) | vdivs.l | vx[:] = I / vz[:] |
| VDVX | __vr _ve_vdivsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vdivs.l | vx[:] = vm[:] ? vy[:] / vz[:] : vd[:] |
| VDVX | __vr _ve_vdivsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd) | vdivs.l | vx[:] = vm[:] ? sy / vz[:] : vd[:] |
| VDVX | __vr _ve_vdivsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd) | vdivs.l | vx[:] = vm[:] ? I / vz[:] : vd[:] |
| VDVX | __vr _ve_vdivsl_vvs(__vr vy, long int sy) | vdivs.l | vx[:] = vy[:] / sy |
| VDVX | __vr _ve_vdivsl_vvs(__vr vy, long int I) | vdivs.l | vx[:] = vy[:] / I |
| VDVX | __vr _ve_vdivsl_vvsmv(__vr vy, long int sy, __vm256 vm, __vr vd) | vdivs.l | vx[:] = vm[:] ? vy[:] / sy : vd[:] |
| VDVX | __vr _ve_vdivsl_vvsmv(__vr vy, long int I, __vm256 vm, __vr vd) | vdivs.l | vx[:] = vm[:] ? vy[:] / I : vd[:] |
| VCMP | __vr _ve_vcmpul_vvv(__vr vy, __vr vz) | vcmpu.l | vx[:] = compare(vy[:], vz[:]) |
| VCMP | __vr _ve_vcmpul_vsv(unsigned long int sy, __vr vz) | vcmpu.l | vx[:] = compare(sy, vz[:]) |
| VCMP | __vr _ve_vcmpul_vsv(unsigned long int I, __vr vz) | vcmpu.l | vx[:] = compare(I, vz[:]) |
| VCMP | __vr _ve_vcmpul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vcmpu.l | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VCMP | __vr _ve_vcmpul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | vcmpu.l | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VCMP | __vr _ve_vcmpul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd) | vcmpu.l | vx[:] = vm[:] ? compare(I, vz[:]) : vd[:] |
| VCMP | __vr _ve_vcmpuw_vvv(__vr vy, __vr vz) | vcmpu.w | vx[:] = compare(vy[:], vz[:]) |
| VCMP | __vr _ve_vcmpuw_vsv(unsigned int sy, __vr vz) | vcmpu.w | vx[:] = compare(sy, vz[:]) |
| VCMP | __vr _ve_vcmpuw_vsv(unsigned int I, __vr vz) | vcmpu.w | vx[:] = compare(I, vz[:]) |
| VCMP | __vr _ve_vcmpuw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vcmpu.w | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VCMP | __vr _ve_vcmpuw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd) | vcmpu.w | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VCMP | __vr _ve_vcmpuw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd) | vcmpu.w | vx[:] = vm[:] ? compare(I, vz[:]) : vd[:] |
| VCMP | __vr _ve_pvcmpu_vvv(__vr vy, __vr vz) | pvcmpu | vx[:] = compare(vy[:], vz[:]) |
| VCMP | __vr _ve_pvcmpu_vsv(unsigned long int sy, __vr vz) | pvcmpu | vx[:] = compare(sy, vz[:]) |
| VCMP | __vr _ve_pvcmpu_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvcmpu | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VCMP | __vr _ve_pvcmpu_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvcmpu | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VCPS | __vr _ve_vcmpswsx_vvv(__vr vy, __vr vz) | vcmps.w.sx | vx[:] = compare(vy[:], vz[:]) |
| VCPS | __vr _ve_vcmpswsx_vsv(int sy, __vr vz) | vcmps.w.sx | vx[:] = compare(sy, vz[:]) |
| VCPS | __vr _ve_vcmpswsx_vsv(int I, __vr vz) | vcmps.w.sx | vx[:] = compare(I, vz[:]) |
| VCPS | __vr _ve_vcmpswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vcmps.w.sx | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VCPS | __vr _ve_vcmpswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vcmps.w.sx | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VCPS | __vr _ve_vcmpswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vcmps.w.sx | vx[:] = vm[:] ? compare(I, vz[:]) : vd[:] |
| VCPS | __vr _ve_vcmpswzx_vvv(__vr vy, __vr vz) | vcmps.w.zx | vx[:] = compare(vy[:], vz[:]) |
| VCPS | __vr _ve_vcmpswzx_vsv(int sy, __vr vz) | vcmps.w.zx | vx[:] = compare(sy, vz[:]) |
| VCPS | __vr _ve_vcmpswzx_vsv(int I, __vr vz) | vcmps.w.zx | vx[:] = compare(I, vz[:]) |
| VCPS | __vr _ve_vcmpswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vcmps.w.zx | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VCPS | __vr _ve_vcmpswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vcmps.w.zx | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VCPS | __vr _ve_vcmpswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vcmps.w.zx | vx[:] = vm[:] ? compare(I, vz[:]) : vd[:] |
| VCPS | __vr _ve_pvcmps_vvv(__vr vy, __vr vz) | pvcmps | vx[:] = compare(vy[:], vz[:]) |
| VCPS | __vr _ve_pvcmps_vsv(unsigned long int sy, __vr vz) | pvcmps | vx[:] = compare(sy, vz[:]) |
| VCPS | __vr _ve_pvcmps_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvcmps | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VCPS | __vr _ve_pvcmps_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvcmps | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VCPX | __vr _ve_vcmpsl_vvv(__vr vy, __vr vz) | vcmps.l | vx[:] = compare(vy[:], vz[:]) |
| VCPX | __vr _ve_vcmpsl_vsv(long int sy, __vr vz) | vcmps.l | vx[:] = compare(sy, vz[:]) |
| VCPX | __vr _ve_vcmpsl_vsv(long int I, __vr vz) | vcmps.l | vx[:] = compare(I, vz[:]) |
| VCPX | __vr _ve_vcmpsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vcmps.l | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VCPX | __vr _ve_vcmpsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd) | vcmps.l | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VCPX | __vr _ve_vcmpsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd) | vcmps.l | vx[:] = vm[:] ? compare(I, vz[:]) : vd[:] |
| VCMS | __vr _ve_vmaxswsx_vvv(__vr vy, __vr vz) | vmaxs.w.sx | vx[:] = max(vy[:], vz[:]) |
| VCMS | __vr _ve_vmaxswsx_vsv(int sy, __vr vz) | vmaxs.w.sx | vx[:] = max(sy, vz[:]) |
| VCMS | __vr _ve_vmaxswsx_vsv(int I, __vr vz) | vmaxs.w.sx | vx[:] = max(I, vz[:]) |
| VCMS | __vr _ve_vmaxswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmaxs.w.sx | vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:] |
| VCMS | __vr _ve_vmaxswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vmaxs.w.sx | vx[:] = vm[:] ? max(sy, vz[:]) : vd[:] |
| VCMS | __vr _ve_vmaxswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vmaxs.w.sx | vx[:] = vm[:] ? max(I, vz[:]) : vd[:] |
| VCMS | __vr _ve_vmaxswzx_vvv(__vr vy, __vr vz) | vmaxs.w.zx | vx[:] = max(vy[:], vz[:]) |
| VCMS | __vr _ve_vmaxswzx_vsv(int sy, __vr vz) | vmaxs.w.zx | vx[:] = max(sy, vz[:]) |
| VCMS | __vr _ve_vmaxswzx_vsv(int I, __vr vz) | vmaxs.w.zx | vx[:] = max(I, vz[:]) |
| VCMS | __vr _ve_vmaxswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmaxs.w.zx | vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:] |
| VCMS | __vr _ve_vmaxswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vmaxs.w.zx | vx[:] = vm[:] ? max(sy, vz[:]) : vd[:] |
| VCMS | __vr _ve_vmaxswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vmaxs.w.zx | vx[:] = vm[:] ? max(I, vz[:]) : vd[:] |
| VCMS | __vr _ve_pvmaxs_vvv(__vr vy, __vr vz) | pvmaxs | vx[:] = max(vy[:], vz[:]) |
| VCMS | __vr _ve_pvmaxs_vsv(unsigned long int sy, __vr vz) | pvmaxs | vx[:] = max(sy, vz[:]) |
| VCMS | __vr _ve_pvmaxs_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvmaxs | vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:] |
| VCMS | __vr _ve_pvmaxs_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvmaxs | vx[:] = vm[:] ? max(sy, vz[:]) : vd[:] |
| VCMS | __vr _ve_vminswsx_vvv(__vr vy, __vr vz) | vmins.w.sx | vx[:] = min(vy[:], vz[:]) |
| VCMS | __vr _ve_vminswsx_vsv(int sy, __vr vz) | vmins.w.sx | vx[:] = min(sy, vz[:]) |
| VCMS | __vr _ve_vminswsx_vsv(int I, __vr vz) | vmins.w.sx | vx[:] = min(I, vz[:]) |
| VCMS | __vr _ve_vminswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmins.w.sx | vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:] |
| VCMS | __vr _ve_vminswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vmins.w.sx | vx[:] = vm[:] ? min(sy, vz[:]) : vd[:] |
| VCMS | __vr _ve_vminswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vmins.w.sx | vx[:] = vm[:] ? min(I, vz[:]) : vd[:] |
| VCMS | __vr _ve_vminswzx_vvv(__vr vy, __vr vz) | vmins.w.zx | vx[:] = min(vy[:], vz[:]) |
| VCMS | __vr _ve_vminswzx_vsv(int sy, __vr vz) | vmins.w.zx | vx[:] = min(sy, vz[:]) |
| VCMS | __vr _ve_vminswzx_vsv(int I, __vr vz) | vmins.w.zx | vx[:] = min(I, vz[:]) |
| VCMS | __vr _ve_vminswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmins.w.zx | vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:] |
| VCMS | __vr _ve_vminswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd) | vmins.w.zx | vx[:] = vm[:] ? min(sy, vz[:]) : vd[:] |
| VCMS | __vr _ve_vminswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd) | vmins.w.zx | vx[:] = vm[:] ? min(I, vz[:]) : vd[:] |
| VCMS | __vr _ve_pvmins_vvv(__vr vy, __vr vz) | pvmins | vx[:] = min(vy[:], vz[:]) |
| VCMS | __vr _ve_pvmins_vsv(unsigned long int sy, __vr vz) | pvmins | vx[:] = min(sy, vz[:]) |
| VCMS | __vr _ve_pvmins_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvmins | vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:] |
| VCMS | __vr _ve_pvmins_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvmins | vx[:] = vm[:] ? min(sy, vz[:]) : vd[:] |
| VCMX | __vr _ve_vmaxsl_vvv(__vr vy, __vr vz) | vmaxs.l | vx[:] = max(vy[:], vz[:]) |
| VCMX | __vr _ve_vmaxsl_vsv(long int sy, __vr vz) | vmaxs.l | vx[:] = max(sy, vz[:]) |
| VCMX | __vr _ve_vmaxsl_vsv(long int I, __vr vz) | vmaxs.l | vx[:] = max(I, vz[:]) |
| VCMX | __vr _ve_vmaxsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmaxs.l | vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:] |
| VCMX | __vr _ve_vmaxsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd) | vmaxs.l | vx[:] = vm[:] ? max(sy, vz[:]) : vd[:] |
| VCMX | __vr _ve_vmaxsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd) | vmaxs.l | vx[:] = vm[:] ? max(I, vz[:]) : vd[:] |
| VCMX | __vr _ve_vminsl_vvv(__vr vy, __vr vz) | vmins.l | vx[:] = min(vy[:], vz[:]) |
| VCMX | __vr _ve_vminsl_vsv(long int sy, __vr vz) | vmins.l | vx[:] = min(sy, vz[:]) |
| VCMX | __vr _ve_vminsl_vsv(long int I, __vr vz) | vmins.l | vx[:] = min(I, vz[:]) |
| VCMX | __vr _ve_vminsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vmins.l | vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:] |
| VCMX | __vr _ve_vminsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd) | vmins.l | vx[:] = vm[:] ? min(sy, vz[:]) : vd[:] |
| VCMX | __vr _ve_vminsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd) | vmins.l | vx[:] = vm[:] ? min(I, vz[:]) : vd[:] |

## 2 Vector Logical Arithmetic Operation Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| VAND | __vr _ve_vand_vvv(__vr vy, __vr vz) | vand | vx[:] = vy[:] & vz[:] |
| VAND | __vr _ve_vand_vsv(unsigned long int sy, __vr vz) | vand | vx[:] = sy & vz[:] |
| VAND | __vr _ve_vand_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vand | vx[:] = vm[:] ? vy[:] & vz[:] : vd[:] |
| VAND | __vr _ve_vand_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | vand | vx[:] = vm[:] ? sy & vz[:] : vd[:] |
| VAND | __vr _ve_pvand_vvv(__vr vy, __vr vz) | pvand | vx[:] = vy[:] & vz[:] |
| VAND | __vr _ve_pvand_vsv(unsigned long int sy, __vr vz) | pvand | vx[:] = sy & vz[:] |
| VAND | __vr _ve_pvand_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvand | vx[:] = vm[:] ? vy[:] & vz[:] : vd[:] |
| VAND | __vr _ve_pvand_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvand | vx[:] = vm[:] ? sy & vz[:] : vd[:] |
| VOR | __vr _ve_vor_vvv(__vr vy, __vr vz) | vor | vx[:] = vy[:] | vz[:] |
| VOR | __vr _ve_vor_vsv(unsigned long int sy, __vr vz) | vor | vx[:] = sy | vz[:] |
| VOR | __vr _ve_vor_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vor | vx[:] = vm[:] ? vy[:] | vz[:] : vd[:] |
| VOR | __vr _ve_vor_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | vor | vx[:] = vm[:] ? sy | vz[:] : vd[:] |
| VOR | __vr _ve_pvor_vvv(__vr vy, __vr vz) | pvor | vx[:] = vy[:] | vz[:] |
| VOR | __vr _ve_pvor_vsv(unsigned long int sy, __vr vz) | pvor | vx[:] = sy | vz[:] |
| VOR | __vr _ve_pvor_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvor | vx[:] = vm[:] ? vy[:] | vz[:] : vd[:] |
| VOR | __vr _ve_pvor_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvor | vx[:] = vm[:] ? sy | vz[:] : vd[:] |
| VXOR | __vr _ve_vxor_vvv(__vr vy, __vr vz) | vxor | vx[:] = vy[:] ^ vz[:] |
| VXOR | __vr _ve_vxor_vsv(unsigned long int sy, __vr vz) | vxor | vx[:] = sy ^ vz[:] |
| VXOR | __vr _ve_vxor_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vxor | vx[:] = vm[:] ? vy[:] ^ vz[:] : vd[:] |
| VXOR | __vr _ve_vxor_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | vxor | vx[:] = vm[:] ? sy ^ vz[:] : vd[:] |
| VXOR | __vr _ve_pvxor_vvv(__vr vy, __vr vz) | pvxor | vx[:] = vy[:] ^ vz[:] |
| VXOR | __vr _ve_pvxor_vsv(unsigned long int sy, __vr vz) | pvxor | vx[:] = sy ^ vz[:] |
| VXOR | __vr _ve_pvxor_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvxor | vx[:] = vm[:] ? vy[:] ^ vz[:] : vd[:] |
| VXOR | __vr _ve_pvxor_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvxor | vx[:] = vm[:] ? sy ^ vz[:] : vd[:] |
| VEQV | __vr _ve_veqv_vvv(__vr vy, __vr vz) | veqv | vx[:] = ~(vy[:] ^ vz[:]) |
| VEQV | __vr _ve_veqv_vsv(unsigned long int sy, __vr vz) | veqv | vx[:] = ~(sy ^ vz[:]) |
| VEQV | __vr _ve_veqv_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | veqv | vx[:] = vm[:] ? ~(vy[:] ^ vz[:]) : vd[:] |
| VEQV | __vr _ve_veqv_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd) | veqv | vx[:] = vm[:] ? ~(sy ^ vz[:]) : vd[:] |
| VEQV | __vr _ve_pveqv_vvv(__vr vy, __vr vz) | pveqv | vx[:] = ~(vy[:] ^ vz[:]) |
| VEQV | __vr _ve_pveqv_vsv(unsigned long int sy, __vr vz) | pveqv | vx[:] = ~(sy ^ vz[:]) |
| VEQV | __vr _ve_pveqv_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pveqv | vx[:] = vm[:] ? ~(vy[:] ^ vz[:]) : vd[:] |
| VEQV | __vr _ve_pveqv_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pveqv | vx[:] = vm[:] ? ~(sy ^ vz[:]) : vd[:] |
| VLDZ | not yet implemented |  |  |
| VPCNT | not yet implemented |  |  |
| VBRV | not yet implemented |  |  |
| VSEQ | __vr _ve_vseq_v() | vseq | vx[:] = i |
| VSEQ | __vr _ve_pvseqlo_v() | pvseq.lo | vx[:] = i |
| VSEQ | __vr _ve_pvsequp_v() | pvseq.up | vx[:] = i |
| VSEQ | __vr _ve_pvseq_v() | pvseq | vx[:] = i |

## 3 Vector Shift Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| VSLL | __vr _ve_vsll_vvv(__vr vz, __vr vy) | vsll | vx[:] = vz[:] << (vy[:] & 0x3f) |
| VSLL | __vr _ve_vsll_vvs(__vr vz, unsigned long int sy) | vsll | vx[:] = vz[:] << (sy & 0x3f) |
| VSLL | __vr _ve_vsll_vvs(__vr vz, unsigned long int N) | vsll | vx[:] = vz[:] << (N & 0x3f) |
| VSLL | __vr _ve_vsll_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd) | vsll | vx[:] = vm[:] ? vz[:] << (vy[:] & 0x3f) : vd[:] |
| VSLL | __vr _ve_vsll_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd) | vsll | vx[:] = vm[:] ? vz[:] << (sy & 0x3f) : vd[:] |
| VSLL | __vr _ve_vsll_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd) | vsll | vx[:] = vm[:] ? vz[:] << (N & 0x3f) : vd[:] |
| VSLL | __vr _ve_pvsll_vvv(__vr vz, __vr vy) | pvsll | vx[:] = vz[:] << (vy[:] & 0x1f) |
| VSLL | __vr _ve_pvsll_vvs(__vr vz, unsigned long int sy) | pvsll | vx[:] = vz[:] << (sy & 0x1f) |
| VSLL | __vr _ve_pvsll_vvvMv(__vr vz, __vr vy, __vm512 vm, __vr vd) | pvsll | vx[:] = vm[:] ? vz[:] << (vy[:] & 0x1f) : vd[:] |
| VSLL | __vr _ve_pvsll_vvsMv(__vr vz, unsigned long int sy, __vm512 vm, __vr vd) | pvsll | vx[:] = vm[:] ? vz[:] << (sy & 0x1f) : vd[:] |
| VSLD | not yet implemented |  |  |
| VSRL | __vr _ve_vsrl_vvv(__vr vz, __vr vy) | vsrl | vx[:] = vz[:] >> (vy[:] & 0x3f) |
| VSRL | __vr _ve_vsrl_vvs(__vr vz, unsigned long int sy) | vsrl | vx[:] = vz[:] >> (sy & 0x3f) |
| VSRL | __vr _ve_vsrl_vvs(__vr vz, unsigned long int N) | vsrl | vx[:] = vz[:] >> (N & 0x3f) |
| VSRL | __vr _ve_vsrl_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd) | vsrl | vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x3f) : vd[:] |
| VSRL | __vr _ve_vsrl_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd) | vsrl | vx[:] = vm[:] ? vz[:] >> (sy & 0x3f) : vd[:] |
| VSRL | __vr _ve_vsrl_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd) | vsrl | vx[:] = vm[:] ? vz[:] >> (N & 0x3f) : vd[:] |
| VSRL | __vr _ve_pvsrl_vvv(__vr vz, __vr vy) | pvsrl | vx[:] = vz[:] >> (vy[:] & 0x1f) |
| VSRL | __vr _ve_pvsrl_vvs(__vr vz, unsigned long int sy) | pvsrl | vx[:] = vz[:] >> (sy & 0x1f) |
| VSRL | __vr _ve_pvsrl_vvvMv(__vr vz, __vr vy, __vm512 vm, __vr vd) | pvsrl | vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x1f) : vd[:] |
| VSRL | __vr _ve_pvsrl_vvsMv(__vr vz, unsigned long int sy, __vm512 vm, __vr vd) | pvsrl | vx[:] = vm[:] ? vz[:] >> (sy & 0x1f) : vd[:] |
| VSRD | not yet implemented |  |  |
| VSLA | __vr _ve_vslaw_vvv(__vr vz, __vr vy) | vsla.w | vx[:] = vz[:] << (vy[:] & 0x1f) |
| VSLA | __vr _ve_vslaw_vvs(__vr vz, unsigned long int sy) | vsla.w | vx[:] = vz[:] << (sy & 0x1f) |
| VSLA | __vr _ve_vslaw_vvs(__vr vz, unsigned long int N) | vsla.w | vx[:] = vz[:] << (N & 0x1f) |
| VSLA | __vr _ve_vslaw_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd) | vsla.w | vx[:] = vm[:] ? vz[:] << (vy[:] & 0x1f) : vd[:] |
| VSLA | __vr _ve_vslaw_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd) | vsla.w | vx[:] = vm[:] ? vz[:] << (sy & 0x1f) : vd[:] |
| VSLA | __vr _ve_vslaw_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd) | vsla.w | vx[:] = vm[:] ? vz[:] << (N & 0x1f) : vd[:] |
| VSLA | __vr _ve_pvsla_vvv(__vr vz, __vr vy) | pvsla | vx[:] = vz[:] << (vy[:] & 0x1f) |
| VSLA | __vr _ve_pvsla_vvs(__vr vz, unsigned long int sy) | pvsla | vx[:] = vz[:] << (sy & 0x1f) |
| VSLA | __vr _ve_pvsla_vvvMv(__vr vz, __vr vy, __vm512 vm, __vr vd) | pvsla | vx[:] = vm[:] ? vz[:] << (vy[:] & 0x1f) : vd[:] |
| VSLA | __vr _ve_pvsla_vvsMv(__vr vz, unsigned long int sy, __vm512 vm, __vr vd) | pvsla | vx[:] = vm[:] ? vz[:] << (sy & 0x1f) : vd[:] |
| VSLAX | __vr _ve_vslal_vvv(__vr vz, __vr vy) | vsla.l | vx[:] = vz[:] << (vy[:] & 0x3f) |
| VSLAX | __vr _ve_vslal_vvs(__vr vz, unsigned long int sy) | vsla.l | vx[:] = vz[:] << (sy & 0x3f) |
| VSLAX | __vr _ve_vslal_vvs(__vr vz, unsigned long int N) | vsla.l | vx[:] = vz[:] << (N & 0x3f) |
| VSLAX | __vr _ve_vslal_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd) | vsla.l | vx[:] = vm[:] ? vz[:] << (vy[:] & 0x3f) : vd[:] |
| VSLAX | __vr _ve_vslal_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd) | vsla.l | vx[:] = vm[:] ? vz[:] << (sy & 0x3f) : vd[:] |
| VSLAX | __vr _ve_vslal_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd) | vsla.l | vx[:] = vm[:] ? vz[:] << (N & 0x3f) : vd[:] |
| VSRA | __vr _ve_vsraw_vvv(__vr vz, __vr vy) | vsra.w | vx[:] = vz[:] >> (vy[:] & 0x1f) |
| VSRA | __vr _ve_vsraw_vvs(__vr vz, unsigned long int sy) | vsra.w | vx[:] = vz[:] >> (sy & 0x1f) |
| VSRA | __vr _ve_vsraw_vvs(__vr vz, unsigned long int N) | vsra.w | vx[:] = vz[:] >> (N & 0x1f) |
| VSRA | __vr _ve_vsraw_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd) | vsra.w | vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x1f) : vd[:] |
| VSRA | __vr _ve_vsraw_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd) | vsra.w | vx[:] = vm[:] ? vz[:] >> (sy & 0x1f) : vd[:] |
| VSRA | __vr _ve_vsraw_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd) | vsra.w | vx[:] = vm[:] ? vz[:] >> (N & 0x1f) : vd[:] |
| VSRA | __vr _ve_pvsra_vvv(__vr vz, __vr vy) | pvsra | vx[:] = vz[:] >> (vy[:] & 0x1f) |
| VSRA | __vr _ve_pvsra_vvs(__vr vz, unsigned long int sy) | pvsra | vx[:] = vz[:] >> (sy & 0x1f) |
| VSRA | __vr _ve_pvsra_vvvMv(__vr vz, __vr vy, __vm512 vm, __vr vd) | pvsra | vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x1f) : vd[:] |
| VSRA | __vr _ve_pvsra_vvsMv(__vr vz, unsigned long int sy, __vm512 vm, __vr vd) | pvsra | vx[:] = vm[:] ? vz[:] >> (sy & 0x1f) : vd[:] |
| VSRAX | __vr _ve_vsral_vvv(__vr vz, __vr vy) | vsra.l | vx[:] = vz[:] >> (vy[:] & 0x3f) |
| VSRAX | __vr _ve_vsral_vvs(__vr vz, unsigned long int sy) | vsra.l | vx[:] = vz[:] >> (sy & 0x3f) |
| VSRAX | __vr _ve_vsral_vvs(__vr vz, unsigned long int N) | vsra.l | vx[:] = vz[:] >> (N & 0x3f) |
| VSRAX | __vr _ve_vsral_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd) | vsra.l | vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x3f) : vd[:] |
| VSRAX | __vr _ve_vsral_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd) | vsra.l | vx[:] = vm[:] ? vz[:] >> (sy & 0x3f) : vd[:] |
| VSRAX | __vr _ve_vsral_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd) | vsra.l | vx[:] = vm[:] ? vz[:] >> (N & 0x3f) : vd[:] |
| VSFA | __vr _ve_vsfa_vvss(__vr vz, unsigned long int sy, unsigned long int sz) | vsfa | vx[:] = (vz[:] << (sy & 0x7)) + sz |
| VSFA | __vr _ve_vsfa_vvss(__vr vz, unsigned long int I, unsigned long int sz) | vsfa | vx[:] = (vz[:] << (I & 0x7)) + sz |
| VSFA | __vr _ve_vsfa_vvssmv(__vr vz, unsigned long int sy, unsigned long int sz, __vm256 vm, __vr vd) | vsfa | vx[:] = vm[:] ? (vz[:] << (sy & 0x7)) + sz : vd[:] |
| VSFA | __vr _ve_vsfa_vvssmv(__vr vz, unsigned long int I, unsigned long int sz, __vm256 vm, __vr vd) | vsfa | vx[:] = vm[:] ? (vz[:] << (I & 0x7)) + sz : vd[:] |

## 4 Vector Floating-Point Operation Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| VFAD | __vr _ve_vfaddd_vvv(__vr vy, __vr vz) | vfadd.d | vx[:] = vy[:] + vz[:] |
| VFAD | __vr _ve_vfaddd_vsv(double sy, __vr vz) | vfadd.d | vx[:] = sy + vz[:] |
| VFAD | __vr _ve_vfaddd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfadd.d | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VFAD | __vr _ve_vfaddd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd) | vfadd.d | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VFAD | __vr _ve_vfadds_vvv(__vr vy, __vr vz) | vfadd.s | vx[:] = vy[:] + vz[:] |
| VFAD | __vr _ve_vfadds_vsv(float sy, __vr vz) | vfadd.s | vx[:] = sy + vz[:] |
| VFAD | __vr _ve_vfadds_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfadd.s | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VFAD | __vr _ve_vfadds_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd) | vfadd.s | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VFAD | __vr _ve_pvfadd_vvv(__vr vy, __vr vz) | pvfadd | vx[:] = vy[:] + vz[:] |
| VFAD | __vr _ve_pvfadd_vsv(unsigned long int sy, __vr vz) | pvfadd | vx[:] = sy + vz[:] |
| VFAD | __vr _ve_pvfadd_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvfadd | vx[:] = vm[:] ? vy[:] + vz[:] : vd[:] |
| VFAD | __vr _ve_pvfadd_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvfadd | vx[:] = vm[:] ? sy + vz[:] : vd[:] |
| VFSB | __vr _ve_vfsubd_vvv(__vr vy, __vr vz) | vfsub.d | vx[:] = vy[:] - vz[:] |
| VFSB | __vr _ve_vfsubd_vsv(double sy, __vr vz) | vfsub.d | vx[:] = sy - vz[:] |
| VFSB | __vr _ve_vfsubd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfsub.d | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VFSB | __vr _ve_vfsubd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd) | vfsub.d | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VFSB | __vr _ve_vfsubs_vvv(__vr vy, __vr vz) | vfsub.s | vx[:] = vy[:] - vz[:] |
| VFSB | __vr _ve_vfsubs_vsv(float sy, __vr vz) | vfsub.s | vx[:] = sy - vz[:] |
| VFSB | __vr _ve_vfsubs_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfsub.s | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VFSB | __vr _ve_vfsubs_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd) | vfsub.s | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VFSB | __vr _ve_pvfsub_vvv(__vr vy, __vr vz) | pvfsub | vx[:] = vy[:] - vz[:] |
| VFSB | __vr _ve_pvfsub_vsv(unsigned long int sy, __vr vz) | pvfsub | vx[:] = sy - vz[:] |
| VFSB | __vr _ve_pvfsub_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvfsub | vx[:] = vm[:] ? vy[:] - vz[:] : vd[:] |
| VFSB | __vr _ve_pvfsub_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvfsub | vx[:] = vm[:] ? sy - vz[:] : vd[:] |
| VFMP | __vr _ve_vfmuld_vvv(__vr vy, __vr vz) | vfmul.d | vx[:] = vy[:] * vz[:] |
| VFMP | __vr _ve_vfmuld_vsv(double sy, __vr vz) | vfmul.d | vx[:] = sy * vz[:] |
| VFMP | __vr _ve_vfmuld_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfmul.d | vx[:] = vm[:] ? vy[:] * vz[:] : vd[:] |
| VFMP | __vr _ve_vfmuld_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd) | vfmul.d | vx[:] = vm[:] ? sy * vz[:] : vd[:] |
| VFMP | __vr _ve_vfmuls_vvv(__vr vy, __vr vz) | vfmul.s | vx[:] = vy[:] * vz[:] |
| VFMP | __vr _ve_vfmuls_vsv(float sy, __vr vz) | vfmul.s | vx[:] = sy * vz[:] |
| VFMP | __vr _ve_vfmuls_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfmul.s | vx[:] = vm[:] ? vy[:] * vz[:] : vd[:] |
| VFMP | __vr _ve_vfmuls_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd) | vfmul.s | vx[:] = vm[:] ? sy * vz[:] : vd[:] |
| VFMP | __vr _ve_pvfmul_vvv(__vr vy, __vr vz) | pvfmul | vx[:] = vy[:] * vz[:] |
| VFMP | __vr _ve_pvfmul_vsv(unsigned long int sy, __vr vz) | pvfmul | vx[:] = sy * vz[:] |
| VFMP | __vr _ve_pvfmul_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvfmul | vx[:] = vm[:] ? vy[:] * vz[:] : vd[:] |
| VFMP | __vr _ve_pvfmul_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvfmul | vx[:] = vm[:] ? sy * vz[:] : vd[:] |
| VFDV | __vr _ve_vfdivd_vvv(__vr vy, __vr vz) | vfdiv.d | vx[:] = vy[:] / vz[:] |
| VFDV | __vr _ve_vfdivd_vsv(double sy, __vr vz) | vfdiv.d | vx[:] = sy / vz[:] |
| VFDV | __vr _ve_vfdivd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfdiv.d | vx[:] = vm[:] ? vy[:] / vz[:] : vd[:] |
| VFDV | __vr _ve_vfdivd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd) | vfdiv.d | vx[:] = vm[:] ? sy / vz[:] : vd[:] |
| VFDV | __vr _ve_vfdivs_vvv(__vr vy, __vr vz) | vfdiv.s | vx[:] = vy[:] / vz[:] |
| VFDV | __vr _ve_vfdivs_vsv(float sy, __vr vz) | vfdiv.s | vx[:] = sy / vz[:] |
| VFDV | __vr _ve_vfdivs_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfdiv.s | vx[:] = vm[:] ? vy[:] / vz[:] : vd[:] |
| VFDV | __vr _ve_vfdivs_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd) | vfdiv.s | vx[:] = vm[:] ? sy / vz[:] : vd[:] |
|  | __vr _ve_vfdivsA_vvv(__vr vy, __vr vz) |  | vx[:] = vy[:] / vz[:] |
|  | __vr _ve_vfdivsA_vsv(float sy, __vr vz) |  | vx[:] = sy / vz[:] |
|  | __vr _ve_pvfdivA_vvv(__vr vy, __vr vz) |  | vx[:] = vy[:] / vz[:] |
| VFSQRT | __vr _ve_vfsqrtd_vv(__vr vy) | vfsqrt.d | vx[:] = std::sqrt(vy[:]) |
| VFSQRT | __vr _ve_vfsqrts_vv(__vr vy) | vfsqrt.s | vx[:] = std::sqrt(vy[:]) |
| VFCP | __vr _ve_vfcmpd_vvv(__vr vy, __vr vz) | vfcmp.d | vx[:] = compare(vy[:], vz[:]) |
| VFCP | __vr _ve_vfcmpd_vsv(double sy, __vr vz) | vfcmp.d | vx[:] = compare(sy, vz[:]) |
| VFCP | __vr _ve_vfcmpd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfcmp.d | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VFCP | __vr _ve_vfcmpd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd) | vfcmp.d | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VFCP | __vr _ve_vfcmps_vvv(__vr vy, __vr vz) | vfcmp.s | vx[:] = compare(vy[:], vz[:]) |
| VFCP | __vr _ve_vfcmps_vsv(float sy, __vr vz) | vfcmp.s | vx[:] = compare(sy, vz[:]) |
| VFCP | __vr _ve_vfcmps_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfcmp.s | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VFCP | __vr _ve_vfcmps_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd) | vfcmp.s | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VFCP | __vr _ve_pvfcmp_vvv(__vr vy, __vr vz) | pvfcmp | vx[:] = compare(vy[:], vz[:]) |
| VFCP | __vr _ve_pvfcmp_vsv(unsigned long int sy, __vr vz) | pvfcmp | vx[:] = compare(sy, vz[:]) |
| VFCP | __vr _ve_pvfcmp_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvfcmp | vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:] |
| VFCP | __vr _ve_pvfcmp_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvfcmp | vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:] |
| VFCM | __vr _ve_vfmaxd_vvv(__vr vy, __vr vz) | vfmax.d | vx[:] = max(vy[:], vz[:]) |
| VFCM | __vr _ve_vfmaxd_vsv(double sy, __vr vz) | vfmax.d | vx[:] = max(sy, vz[:]) |
| VFCM | __vr _ve_vfmaxd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfmax.d | vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:] |
| VFCM | __vr _ve_vfmaxd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd) | vfmax.d | vx[:] = vm[:] ? max(sy, vz[:]) : vd[:] |
| VFCM | __vr _ve_vfmaxs_vvv(__vr vy, __vr vz) | vfmax.s | vx[:] = max(vy[:], vz[:]) |
| VFCM | __vr _ve_vfmaxs_vsv(float sy, __vr vz) | vfmax.s | vx[:] = max(sy, vz[:]) |
| VFCM | __vr _ve_vfmaxs_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfmax.s | vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:] |
| VFCM | __vr _ve_vfmaxs_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd) | vfmax.s | vx[:] = vm[:] ? max(sy, vz[:]) : vd[:] |
| VFCM | __vr _ve_pvfmax_vvv(__vr vy, __vr vz) | pvfmax | vx[:] = max(vy[:], vz[:]) |
| VFCM | __vr _ve_pvfmax_vsv(unsigned long int sy, __vr vz) | pvfmax | vx[:] = max(sy, vz[:]) |
| VFCM | __vr _ve_pvfmax_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvfmax | vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:] |
| VFCM | __vr _ve_pvfmax_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvfmax | vx[:] = vm[:] ? max(sy, vz[:]) : vd[:] |
| VFCM | __vr _ve_vfmind_vvv(__vr vy, __vr vz) | vfmin.d | vx[:] = min(vy[:], vz[:]) |
| VFCM | __vr _ve_vfmind_vsv(double sy, __vr vz) | vfmin.d | vx[:] = min(sy, vz[:]) |
| VFCM | __vr _ve_vfmind_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfmin.d | vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:] |
| VFCM | __vr _ve_vfmind_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd) | vfmin.d | vx[:] = vm[:] ? min(sy, vz[:]) : vd[:] |
| VFCM | __vr _ve_vfmins_vvv(__vr vy, __vr vz) | vfmin.s | vx[:] = min(vy[:], vz[:]) |
| VFCM | __vr _ve_vfmins_vsv(float sy, __vr vz) | vfmin.s | vx[:] = min(sy, vz[:]) |
| VFCM | __vr _ve_vfmins_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd) | vfmin.s | vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:] |
| VFCM | __vr _ve_vfmins_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd) | vfmin.s | vx[:] = vm[:] ? min(sy, vz[:]) : vd[:] |
| VFCM | __vr _ve_pvfmin_vvv(__vr vy, __vr vz) | pvfmin | vx[:] = min(vy[:], vz[:]) |
| VFCM | __vr _ve_pvfmin_vsv(unsigned long int sy, __vr vz) | pvfmin | vx[:] = min(sy, vz[:]) |
| VFCM | __vr _ve_pvfmin_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd) | pvfmin | vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:] |
| VFCM | __vr _ve_pvfmin_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd) | pvfmin | vx[:] = vm[:] ? min(sy, vz[:]) : vd[:] |
| VFMAD | __vr _ve_vfmadd_vvvv(__vr vy, __vr vz, __vr vw) | vfmad.d | vx[:] = vz[:] * vw[:] + vy[:] |
| VFMAD | __vr _ve_vfmadd_vsvv(double sy, __vr vz, __vr vw) | vfmad.d | vx[:] = vz[:] * vw[:] + sy |
| VFMAD | __vr _ve_vfmadd_vvsv(__vr vy, double sy, __vr vw) | vfmad.d | vx[:] = sy * vw[:] + vy[:] |
| VFMAD | __vr _ve_vfmadd_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfmad.d | vx[:] = vm[:] ? vz[:] * vw[:] + vy[:] : vd[:] |
| VFMAD | __vr _ve_vfmadd_vsvvmv(double sy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfmad.d | vx[:] = vm[:] ? vz[:] * vw[:] + sy : vd[:] |
| VFMAD | __vr _ve_vfmadd_vvsvmv(__vr vy, double sy, __vr vw, __vm256 vm, __vr vd) | vfmad.d | vx[:] = vm[:] ? sy * vw[:] + vy[:] : vd[:] |
| VFMAD | __vr _ve_vfmads_vvvv(__vr vy, __vr vz, __vr vw) | vfmad.s | vx[:] = vz[:] * vw[:] + vy[:] |
| VFMAD | __vr _ve_vfmads_vsvv(float sy, __vr vz, __vr vw) | vfmad.s | vx[:] = vz[:] * vw[:] + sy |
| VFMAD | __vr _ve_vfmads_vvsv(__vr vy, float sy, __vr vw) | vfmad.s | vx[:] = sy * vw[:] + vy[:] |
| VFMAD | __vr _ve_vfmads_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfmad.s | vx[:] = vm[:] ? vz[:] * vw[:] + vy[:] : vd[:] |
| VFMAD | __vr _ve_vfmads_vsvvmv(float sy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfmad.s | vx[:] = vm[:] ? vz[:] * vw[:] + sy : vd[:] |
| VFMAD | __vr _ve_vfmads_vvsvmv(__vr vy, float sy, __vr vw, __vm256 vm, __vr vd) | vfmad.s | vx[:] = vm[:] ? sy * vw[:] + vy[:] : vd[:] |
| VFMAD | __vr _ve_pvfmad_vvvv(__vr vy, __vr vz, __vr vw) | pvfmad | vx[:] = vz[:] * vw[:] + vy[:] |
| VFMAD | __vr _ve_pvfmad_vsvv(unsigned long int sy, __vr vz, __vr vw) | pvfmad | vx[:] = vz[:] * vw[:] + sy |
| VFMAD | __vr _ve_pvfmad_vvsv(__vr vy, unsigned long int sy, __vr vw) | pvfmad | vx[:] = sy * vw[:] + vy[:] |
| VFMAD | __vr _ve_pvfmad_vvvvMv(__vr vy, __vr vz, __vr vw, __vm512 vm, __vr vd) | pvfmad | vx[:] = vm[:] ? vz[:] * vw[:] + vy[:] : vd[:] |
| VFMAD | __vr _ve_pvfmad_vsvvMv(unsigned long int sy, __vr vz, __vr vw, __vm512 vm, __vr vd) | pvfmad | vx[:] = vm[:] ? vz[:] * vw[:] + sy : vd[:] |
| VFMAD | __vr _ve_pvfmad_vvsvMv(__vr vy, unsigned long int sy, __vr vw, __vm512 vm, __vr vd) | pvfmad | vx[:] = vm[:] ? sy * vw[:] + vy[:] : vd[:] |
| VFMSB | __vr _ve_vfmsbd_vvvv(__vr vy, __vr vz, __vr vw) | vfmsb.d | vx[:] = vz[:] * vw[:] - vy[:] |
| VFMSB | __vr _ve_vfmsbd_vsvv(double sy, __vr vz, __vr vw) | vfmsb.d | vx[:] = vz[:] * vw[:] - sy |
| VFMSB | __vr _ve_vfmsbd_vvsv(__vr vy, double sy, __vr vw) | vfmsb.d | vx[:] = sy * vw[:] - vy[:] |
| VFMSB | __vr _ve_vfmsbd_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfmsb.d | vx[:] = vm[:] ? vz[:] * vw[:] - vy[:] : vd[:] |
| VFMSB | __vr _ve_vfmsbd_vsvvmv(double sy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfmsb.d | vx[:] = vm[:] ? vz[:] * vw[:] - sy : vd[:] |
| VFMSB | __vr _ve_vfmsbd_vvsvmv(__vr vy, double sy, __vr vw, __vm256 vm, __vr vd) | vfmsb.d | vx[:] = vm[:] ? sy * vw[:] - vy[:] : vd[:] |
| VFMSB | __vr _ve_vfmsbs_vvvv(__vr vy, __vr vz, __vr vw) | vfmsb.s | vx[:] = vz[:] * vw[:] - vy[:] |
| VFMSB | __vr _ve_vfmsbs_vsvv(float sy, __vr vz, __vr vw) | vfmsb.s | vx[:] = vz[:] * vw[:] - sy |
| VFMSB | __vr _ve_vfmsbs_vvsv(__vr vy, float sy, __vr vw) | vfmsb.s | vx[:] = sy * vw[:] - vy[:] |
| VFMSB | __vr _ve_vfmsbs_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfmsb.s | vx[:] = vm[:] ? vz[:] * vw[:] - vy[:] : vd[:] |
| VFMSB | __vr _ve_vfmsbs_vsvvmv(float sy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfmsb.s | vx[:] = vm[:] ? vz[:] * vw[:] - sy : vd[:] |
| VFMSB | __vr _ve_vfmsbs_vvsvmv(__vr vy, float sy, __vr vw, __vm256 vm, __vr vd) | vfmsb.s | vx[:] = vm[:] ? sy * vw[:] - vy[:] : vd[:] |
| VFMSB | __vr _ve_pvfmsb_vvvv(__vr vy, __vr vz, __vr vw) | pvfmsb | vx[:] = vz[:] * vw[:] - vy[:] |
| VFMSB | __vr _ve_pvfmsb_vsvv(unsigned long int sy, __vr vz, __vr vw) | pvfmsb | vx[:] = vz[:] * vw[:] - sy |
| VFMSB | __vr _ve_pvfmsb_vvsv(__vr vy, unsigned long int sy, __vr vw) | pvfmsb | vx[:] = sy * vw[:] - vy[:] |
| VFMSB | __vr _ve_pvfmsb_vvvvMv(__vr vy, __vr vz, __vr vw, __vm512 vm, __vr vd) | pvfmsb | vx[:] = vm[:] ? vz[:] * vw[:] - vy[:] : vd[:] |
| VFMSB | __vr _ve_pvfmsb_vsvvMv(unsigned long int sy, __vr vz, __vr vw, __vm512 vm, __vr vd) | pvfmsb | vx[:] = vm[:] ? vz[:] * vw[:] - sy : vd[:] |
| VFMSB | __vr _ve_pvfmsb_vvsvMv(__vr vy, unsigned long int sy, __vr vw, __vm512 vm, __vr vd) | pvfmsb | vx[:] = vm[:] ? sy * vw[:] - vy[:] : vd[:] |
| VFNMAD | __vr _ve_vfnmadd_vvvv(__vr vy, __vr vz, __vr vw) | vfnmad.d | vx[:] =  - (vz[:] * vw[:] + vy[:]) |
| VFNMAD | __vr _ve_vfnmadd_vsvv(double sy, __vr vz, __vr vw) | vfnmad.d | vx[:] =  - (vz[:] * vw[:] + sy) |
| VFNMAD | __vr _ve_vfnmadd_vvsv(__vr vy, double sy, __vr vw) | vfnmad.d | vx[:] =  - (sy * vw[:] + vy[:]) |
| VFNMAD | __vr _ve_vfnmadd_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfnmad.d | vx[:] = vm[:] ?  - (vz[:] * vw[:] + vy[:]) : vd[:] |
| VFNMAD | __vr _ve_vfnmadd_vsvvmv(double sy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfnmad.d | vx[:] = vm[:] ?  - (vz[:] * vw[:] + sy) : vd[:] |
| VFNMAD | __vr _ve_vfnmadd_vvsvmv(__vr vy, double sy, __vr vw, __vm256 vm, __vr vd) | vfnmad.d | vx[:] = vm[:] ?  - (sy * vw[:] + vy[:]) : vd[:] |
| VFNMAD | __vr _ve_vfnmads_vvvv(__vr vy, __vr vz, __vr vw) | vfnmad.s | vx[:] =  - (vz[:] * vw[:] + vy[:]) |
| VFNMAD | __vr _ve_vfnmads_vsvv(float sy, __vr vz, __vr vw) | vfnmad.s | vx[:] =  - (vz[:] * vw[:] + sy) |
| VFNMAD | __vr _ve_vfnmads_vvsv(__vr vy, float sy, __vr vw) | vfnmad.s | vx[:] =  - (sy * vw[:] + vy[:]) |
| VFNMAD | __vr _ve_vfnmads_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfnmad.s | vx[:] = vm[:] ?  - (vz[:] * vw[:] + vy[:]) : vd[:] |
| VFNMAD | __vr _ve_vfnmads_vsvvmv(float sy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfnmad.s | vx[:] = vm[:] ?  - (vz[:] * vw[:] + sy) : vd[:] |
| VFNMAD | __vr _ve_vfnmads_vvsvmv(__vr vy, float sy, __vr vw, __vm256 vm, __vr vd) | vfnmad.s | vx[:] = vm[:] ?  - (sy * vw[:] + vy[:]) : vd[:] |
| VFNMAD | __vr _ve_pvfnmad_vvvv(__vr vy, __vr vz, __vr vw) | pvfnmad | vx[:] =  - (vz[:] * vw[:] + vy[:]) |
| VFNMAD | __vr _ve_pvfnmad_vsvv(unsigned long int sy, __vr vz, __vr vw) | pvfnmad | vx[:] =  - (vz[:] * vw[:] + sy) |
| VFNMAD | __vr _ve_pvfnmad_vvsv(__vr vy, unsigned long int sy, __vr vw) | pvfnmad | vx[:] =  - (sy * vw[:] + vy[:]) |
| VFNMAD | __vr _ve_pvfnmad_vvvvMv(__vr vy, __vr vz, __vr vw, __vm512 vm, __vr vd) | pvfnmad | vx[:] = vm[:] ?  - (vz[:] * vw[:] + vy[:]) : vd[:] |
| VFNMAD | __vr _ve_pvfnmad_vsvvMv(unsigned long int sy, __vr vz, __vr vw, __vm512 vm, __vr vd) | pvfnmad | vx[:] = vm[:] ?  - (vz[:] * vw[:] + sy) : vd[:] |
| VFNMAD | __vr _ve_pvfnmad_vvsvMv(__vr vy, unsigned long int sy, __vr vw, __vm512 vm, __vr vd) | pvfnmad | vx[:] = vm[:] ?  - (sy * vw[:] + vy[:]) : vd[:] |
| VFNMSB | __vr _ve_vfnmsbd_vvvv(__vr vy, __vr vz, __vr vw) | vfnmsb.d | vx[:] =  - (vz[:] * vw[:] - vy[:]) |
| VFNMSB | __vr _ve_vfnmsbd_vsvv(double sy, __vr vz, __vr vw) | vfnmsb.d | vx[:] =  - (vz[:] * vw[:] - sy) |
| VFNMSB | __vr _ve_vfnmsbd_vvsv(__vr vy, double sy, __vr vw) | vfnmsb.d | vx[:] =  - (sy * vw[:] - vy[:]) |
| VFNMSB | __vr _ve_vfnmsbd_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfnmsb.d | vx[:] = vm[:] ?  - (vz[:] * vw[:] - vy[:]) : vd[:] |
| VFNMSB | __vr _ve_vfnmsbd_vsvvmv(double sy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfnmsb.d | vx[:] = vm[:] ?  - (vz[:] * vw[:] - sy) : vd[:] |
| VFNMSB | __vr _ve_vfnmsbd_vvsvmv(__vr vy, double sy, __vr vw, __vm256 vm, __vr vd) | vfnmsb.d | vx[:] = vm[:] ?  - (sy * vw[:] - vy[:]) : vd[:] |
| VFNMSB | __vr _ve_vfnmsbs_vvvv(__vr vy, __vr vz, __vr vw) | vfnmsb.s | vx[:] =  - (vz[:] * vw[:] - vy[:]) |
| VFNMSB | __vr _ve_vfnmsbs_vsvv(float sy, __vr vz, __vr vw) | vfnmsb.s | vx[:] =  - (vz[:] * vw[:] - sy) |
| VFNMSB | __vr _ve_vfnmsbs_vvsv(__vr vy, float sy, __vr vw) | vfnmsb.s | vx[:] =  - (sy * vw[:] - vy[:]) |
| VFNMSB | __vr _ve_vfnmsbs_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfnmsb.s | vx[:] = vm[:] ?  - (vz[:] * vw[:] - vy[:]) : vd[:] |
| VFNMSB | __vr _ve_vfnmsbs_vsvvmv(float sy, __vr vz, __vr vw, __vm256 vm, __vr vd) | vfnmsb.s | vx[:] = vm[:] ?  - (vz[:] * vw[:] - sy) : vd[:] |
| VFNMSB | __vr _ve_vfnmsbs_vvsvmv(__vr vy, float sy, __vr vw, __vm256 vm, __vr vd) | vfnmsb.s | vx[:] = vm[:] ?  - (sy * vw[:] - vy[:]) : vd[:] |
| VFNMSB | __vr _ve_pvfnmsb_vvvv(__vr vy, __vr vz, __vr vw) | pvfnmsb | vx[:] =  - (vz[:] * vw[:] - vy[:]) |
| VFNMSB | __vr _ve_pvfnmsb_vsvv(unsigned long int sy, __vr vz, __vr vw) | pvfnmsb | vx[:] =  - (vz[:] * vw[:] - sy) |
| VFNMSB | __vr _ve_pvfnmsb_vvsv(__vr vy, unsigned long int sy, __vr vw) | pvfnmsb | vx[:] =  - (sy * vw[:] - vy[:]) |
| VFNMSB | __vr _ve_pvfnmsb_vvvvMv(__vr vy, __vr vz, __vr vw, __vm512 vm, __vr vd) | pvfnmsb | vx[:] = vm[:] ?  - (vz[:] * vw[:] - vy[:]) : vd[:] |
| VFNMSB | __vr _ve_pvfnmsb_vsvvMv(unsigned long int sy, __vr vz, __vr vw, __vm512 vm, __vr vd) | pvfnmsb | vx[:] = vm[:] ?  - (vz[:] * vw[:] - sy) : vd[:] |
| VFNMSB | __vr _ve_pvfnmsb_vvsvMv(__vr vy, unsigned long int sy, __vr vw, __vm512 vm, __vr vd) | pvfnmsb | vx[:] = vm[:] ?  - (sy * vw[:] - vy[:]) : vd[:] |
| VRCP | __vr _ve_vrcpd_vv(__vr vy) | vrcp.d | vx[:] = 1.0f / vy[:] |
| VRCP | __vr _ve_vrcps_vv(__vr vy) | vrcp.s | vx[:] = 1.0f / vy[:] |
| VRCP | __vr _ve_pvrcp_vv(__vr vy) | pvrcp | vx[:] = 1.0f / vy[:] |
| VRSQRT | __vr _ve_vrsqrtd_vv(__vr vy) | vrsqrt.d | vx[:] = 1.0f / std::sqrt(vy[:]) |
| VRSQRT | __vr _ve_vrsqrts_vv(__vr vy) | vrsqrt.s | vx[:] = 1.0f / std::sqrt(vy[:]) |
| VRSQRT | __vr _ve_pvrsqrt_vv(__vr vy) | pvrsqrt | vx[:] = 1.0f / std::sqrt(vy[:]) |
| VRSQRTnex | not yet implemented |  |  |
| VFIX | __vr _ve_vcvtwdsx_vv(__vr vy) | vcvt.w.d.sx | vx[:] = (int)(vy[:]+0.5) |
| VFIX | __vr _ve_vcvtwdsx_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.w.d.sx | vx[:] = vm[:] ? (int)(vy[:]+0.5) : vd[:] |
| VFIX | __vr _ve_vcvtwdsxrz_vv(__vr vy) | vcvt.w.d.sx.rz | vx[:] = (int)(vy[:]) |
| VFIX | __vr _ve_vcvtwdsxrz_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.w.d.sx.rz | vx[:] = vm[:] ? (int)(vy[:]) : vd[:] |
| VFIX | __vr _ve_vcvtwdzx_vv(__vr vy) | vcvt.w.d.zx | vx[:] = (unsigned int)(vy[:]+0.5) |
| VFIX | __vr _ve_vcvtwdzx_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.w.d.zx | vx[:] = vm[:] ? (unsigned int)(vy[:]+0.5) : vd[:] |
| VFIX | __vr _ve_vcvtwdzxrz_vv(__vr vy) | vcvt.w.d.zx.rz | vx[:] = (unsigned int)(vy[:]) |
| VFIX | __vr _ve_vcvtwdzxrz_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.w.d.zx.rz | vx[:] = vm[:] ? (unsigned int)(vy[:]) : vd[:] |
| VFIX | __vr _ve_vcvtwssx_vv(__vr vy) | vcvt.w.s.sx | vx[:] = (int)(vy[:]+0.5) |
| VFIX | __vr _ve_vcvtwssx_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.w.s.sx | vx[:] = vm[:] ? (int)(vy[:]+0.5) : vd[:] |
| VFIX | __vr _ve_vcvtwssxrz_vv(__vr vy) | vcvt.w.s.sx.rz | vx[:] = (int)(vy[:]) |
| VFIX | __vr _ve_vcvtwssxrz_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.w.s.sx.rz | vx[:] = vm[:] ? (int)(vy[:]) : vd[:] |
| VFIX | __vr _ve_vcvtwszx_vv(__vr vy) | vcvt.w.s.zx | vx[:] = (unsigned int)(vy[:]+0.5) |
| VFIX | __vr _ve_vcvtwszx_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.w.s.zx | vx[:] = vm[:] ? (unsigned int)(vy[:]+0.5) : vd[:] |
| VFIX | __vr _ve_vcvtwszxrz_vv(__vr vy) | vcvt.w.s.zx.rz | vx[:] = (unsigned int)(vy[:]) |
| VFIX | __vr _ve_vcvtwszxrz_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.w.s.zx.rz | vx[:] = vm[:] ? (unsigned int)(vy[:]) : vd[:] |
| VFIX | __vr _ve_pvcvtws_vv(__vr vy) | pvcvt.w.s | vx[:] = (int)(vy[:]+0.5) |
| VFIX | __vr _ve_pvcvtws_vvMv(__vr vy, __vm512 vm, __vr vd) | pvcvt.w.s | vx[:] = vm[:] ? (int)(vy[:]+0.5) : vd[:] |
| VFIX | __vr _ve_pvcvtwsrz_vv(__vr vy) | pvcvt.w.s.rz | vx[:] = (int)(vy[:]) |
| VFIX | __vr _ve_pvcvtwsrz_vvMv(__vr vy, __vm512 vm, __vr vd) | pvcvt.w.s.rz | vx[:] = vm[:] ? (int)(vy[:]) : vd[:] |
| VFIXX | __vr _ve_vcvtld_vv(__vr vy) | vcvt.l.d | vx[:] = (long long)(vy[:]+0.5) |
| VFIXX | __vr _ve_vcvtld_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.l.d | vx[:] = vm[:] ? (long long)(vy[:]+0.5) : vd[:] |
| VFIXX | __vr _ve_vcvtldrz_vv(__vr vy) | vcvt.l.d.rz | vx[:] = (long long)(vy[:]) |
| VFIXX | __vr _ve_vcvtldrz_vvmv(__vr vy, __vm256 vm, __vr vd) | vcvt.l.d.rz | vx[:] = vm[:] ? (long long)(vy[:]) : vd[:] |
| VFLT | __vr _ve_vcvtdw_vv(__vr vy) | vcvt.d.w | vx[:] = (double)vy[:] |
| VFLT | __vr _ve_vcvtsw_vv(__vr vy) | vcvt.s.w | vx[:] = (float)vy[:] |
| VFLT | __vr _ve_pvcvtsw_vv(__vr vy) | pvcvt.s.w | vx[:] = (float)vy[:] |
| VFLTX | __vr _ve_vcvtdl_vv(__vr vy) | vcvt.d.l | vx[:] = (double)vy[:] |
| VCVD | __vr _ve_vcvtds_vv(__vr vy) | vcvt.d.s | vx[:] = (double)vy[:] |
| VCVS | __vr _ve_vcvtsd_vv(__vr vy) | vcvt.s.d | vx[:] = (float)vy[:] |

## 5 Vector Mask Arithmetic Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| VMRG | __vr _ve_vmrg_vvvm(__vr vy, __vr vz, __vm256 vm) | vmrg |  |
| VMRG | __vr _ve_vmrgw_vvvM(__vr vy, __vr vz, __vm512 vm) | vmrg.w |  |
| VSHF | __vr _ve_vshf_vvvs(__vr vy, __vr vz, unsigned long int sy) | vshf |  |
| VSHF | __vr _ve_vshf_vvvs(__vr vy, __vr vz, unsigned long int N) | vshf |  |
| VCP | __vr _ve_vcp_vvmv(__vr vz, __vm256 vm, __vr vd) | vcp |  |
| VEX | __vr _ve_vex_vvmv(__vr vz, __vm256 vm, __vr vd) | vex |  |
| VFMK | __vm256 _ve_vfmkl_mcv(int cc, __vr vz) | vfmk.l |  |
| VFMK | __vm256 _ve_vfmkl_mcvm(int cc, __vr vz, __vm256 vm) | vfmk.l |  |
| VFMK | __vm256 _ve_vfmkat_m() | vfmk.at |  |
| VFMK | __vm256 _ve_vfmkaf_m() | vfmk.af |  |
| VFMK | __vm512 _ve_pvfmkat_M() |  |  |
| VFMK | __vm512 _ve_pvfmkaf_M() |  |  |
| VFMS | __vm256 _ve_vfmkw_mcv(int cc, __vr vz) | vfmk.w |  |
| VFMS | __vm256 _ve_vfmkw_mcvm(int cc, __vr vz, __vm256 vm) | vfmk.w |  |
| VFMS | __vm512 _ve_pvfmkw_Mcv(int cc, __vr vz) |  |  |
| VFMS | __vm512 _ve_pvfmkw_McvM(int cc, __vr vz, __vm512 vm) |  |  |
| VFMF | __vm256 _ve_vfmkd_mcv(int cc, __vr vz) | vfmk.d |  |
| VFMF | __vm256 _ve_vfmkd_mcvm(int cc, __vr vz, __vm256 vm) | vfmk.d |  |
| VFMF | __vm256 _ve_vfmks_mcv(int cc, __vr vz) | vfmk.s |  |
| VFMF | __vm256 _ve_vfmks_mcvm(int cc, __vr vz, __vm256 vm) | vfmk.s |  |
| VFMF | __vm512 _ve_pvfmks_Mcv(int cc, __vr vz) |  |  |
| VFMF | __vm512 _ve_pvfmks_McvM(int cc, __vr vz, __vm512 vm) |  |  |

## 6 Vector Recursive Relation Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| VSUMS | __vr _ve_vsumwsx_vv(__vr vy) | vsum.w.sx |  |
| VSUMS | __vr _ve_vsumwsx_vvm(__vr vy, __vm256 vm) | vsum.w.sx |  |
| VSUMS | __vr _ve_vsumwzx_vv(__vr vy) | vsum.w.zx |  |
| VSUMS | __vr _ve_vsumwzx_vvm(__vr vy, __vm256 vm) | vsum.w.zx |  |
| VSUMX | __vr _ve_vsuml_vv(__vr vy) | vsum.l |  |
| VSUMX | __vr _ve_vsuml_vvm(__vr vy, __vm256 vm) | vsum.l |  |
| VFSUM | __vr _ve_vfsumd_vv(__vr vy) | vfsum.d |  |
| VFSUM | __vr _ve_vfsumd_vvm(__vr vy, __vm256 vm) | vfsum.d |  |
| VFSUM | __vr _ve_vfsums_vv(__vr vy) | vfsum.s |  |
| VFSUM | __vr _ve_vfsums_vvm(__vr vy, __vm256 vm) | vfsum.s |  |
| VMAXS | __vr _ve_vrmaxswfstsx_vv(__vr vy) | vrmaxs.w.fst.sx |  |
| VMAXS | __vr _ve_vrmaxswlstsx_vv(__vr vy) | vrmaxs.w.lst.sx |  |
| VMAXS | __vr _ve_vrmaxswfstzx_vv(__vr vy) | vrmaxs.w.fst.zx |  |
| VMAXS | __vr _ve_vrmaxswlstzx_vv(__vr vy) | vrmaxs.w.lst.zx |  |
| VMAXS | __vr _ve_vrminswfstsx_vv(__vr vy) | vrmins.w.fst.sx |  |
| VMAXS | __vr _ve_vrminswlstsx_vv(__vr vy) | vrmins.w.lst.sx |  |
| VMAXS | __vr _ve_vrminswfstzx_vv(__vr vy) | vrmins.w.fst.zx |  |
| VMAXS | __vr _ve_vrminswlstzx_vv(__vr vy) | vrmins.w.lst.zx |  |
| VMAXX | __vr _ve_vrmaxslfst_vv(__vr vy) | vrmaxs.l.fst |  |
| VMAXX | __vr _ve_vrmaxsllst_vv(__vr vy) | vrmaxs.l.lst |  |
| VMAXX | __vr _ve_vrminslfst_vv(__vr vy) | vrmins.l.fst |  |
| VMAXX | __vr _ve_vrminsllst_vv(__vr vy) | vrmins.l.lst |  |
| VFMAX | __vr _ve_vfrmaxdfst_vv(__vr vy) | vfrmax.d.fst |  |
| VFMAX | __vr _ve_vfrmaxdlst_vv(__vr vy) | vfrmax.d.lst |  |
| VFMAX | __vr _ve_vfrmaxsfst_vv(__vr vy) | vfrmax.s.fst |  |
| VFMAX | __vr _ve_vfrmaxslst_vv(__vr vy) | vfrmax.s.lst |  |
| VFMAX | __vr _ve_vfrmindfst_vv(__vr vy) | vfrmin.d.fst |  |
| VFMAX | __vr _ve_vfrmindlst_vv(__vr vy) | vfrmin.d.lst |  |
| VFMAX | __vr _ve_vfrminsfst_vv(__vr vy) | vfrmin.s.fst |  |
| VFMAX | __vr _ve_vfrminslst_vv(__vr vy) | vfrmin.s.lst |  |
| VRAND | not yet implemented |  |  |
| VROR | not yet implemented |  |  |
| VRXOR | not yet implemented |  |  |
| VFIA | not yet implemented |  |  |
| VFIS | not yet implemented |  |  |
| VFIM | not yet implemented |  |  |
| VFIAM | not yet implemented |  |  |
| VFISM | not yet implemented |  |  |
| VFIMA | not yet implemented |  |  |
| VFIMS | not yet implemented |  |  |

## 7 Vector Gathering/Scattering Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| VGT | __vr _ve_vgt_vv(__vr vy) | vgt |  |
| VGT | __vr _ve_vgt_vvm(__vr vy, __vm256 vm) | vgt |  |
| VGTU | __vr _ve_vgtu_vv(__vr vy) | vgtu |  |
| VGTU | __vr _ve_vgtu_vvm(__vr vy, __vm256 vm) | vgtu |  |
| VGTL | __vr _ve_vgtlsx_vv(__vr vy) | vgtl.sx |  |
| VGTL | __vr _ve_vgtlsx_vvm(__vr vy, __vm256 vm) | vgtl.sx |  |
| VGTL | __vr _ve_vgtlzx_vv(__vr vy) | vgtl.zx |  |
| VGTL | __vr _ve_vgtlzx_vvm(__vr vy, __vm256 vm) | vgtl.zx |  |
| VSC | void _ve_vsc_vv(__vr vx, __vr vy) | vsc |  |
| VSC | void _ve_vsc_vvm(__vr vx, __vr vy, __vm256 vm) | vsc |  |
| VSC | void _ve_vscot_vv(__vr vx, __vr vy) | vsc.ot |  |
| VSC | void _ve_vscot_vvm(__vr vx, __vr vy, __vm256 vm) | vsc.ot |  |
| VSCU | void _ve_vscu_vv(__vr vx, __vr vy) | vscu |  |
| VSCU | void _ve_vscu_vvm(__vr vx, __vr vy, __vm256 vm) | vscu |  |
| VSCU | void _ve_vscuot_vv(__vr vx, __vr vy) | vscu.ot |  |
| VSCU | void _ve_vscuot_vvm(__vr vx, __vr vy, __vm256 vm) | vscu.ot |  |
| VSCL | void _ve_vscl_vv(__vr vx, __vr vy) | vscl |  |
| VSCL | void _ve_vscl_vvm(__vr vx, __vr vy, __vm256 vm) | vscl |  |
| VSCL | void _ve_vsclot_vv(__vr vx, __vr vy) | vscl.ot |  |
| VSCL | void _ve_vsclot_vvm(__vr vx, __vr vy, __vm256 vm) | vscl.ot |  |

## 8 Vector Mask Register Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| ANDM | __vm256 _ve_andm_mmm(__vm256 vmy, __vm256 vmz) | andm | vmx[:] = vmy[:] ? vmy[:] & vmz[:] : vmz[:] |
| ANDM | __vm512 _ve_andm_MMM(__vm512 vmy, __vm512 vmz) | andm | vmx[:] = vmy[:] ? vmy[:] & vmz[:] : vmz[:] |
| ORM | __vm256 _ve_orm_mmm(__vm256 vmy, __vm256 vmz) | orm | vmx[:] = vmy[:] ? vmy[:] | vmz[:] : vmz[:] |
| ORM | __vm512 _ve_orm_MMM(__vm512 vmy, __vm512 vmz) | orm | vmx[:] = vmy[:] ? vmy[:] | vmz[:] : vmz[:] |
| XORM | __vm256 _ve_xorm_mmm(__vm256 vmy, __vm256 vmz) | xorm | vmx[:] = vmy[:] ? vmy[:] ^ vmz[:] : vmz[:] |
| XORM | __vm512 _ve_xorm_MMM(__vm512 vmy, __vm512 vmz) | xorm | vmx[:] = vmy[:] ? vmy[:] ^ vmz[:] : vmz[:] |
| EQVM | __vm256 _ve_eqvm_mmm(__vm256 vmy, __vm256 vmz) | eqvm | vmx[:] = vmy[:] ? ~(vmy[:] ^ vmz[:]) : vmz[:] |
| EQVM | __vm512 _ve_eqvm_MMM(__vm512 vmy, __vm512 vmz) | eqvm | vmx[:] = vmy[:] ? ~(vmy[:] ^ vmz[:]) : vmz[:] |
| NNDM | __vm256 _ve_nndm_mmm(__vm256 vmy, __vm256 vmz) | nndm | vmx[:] = vmy[:] ? (~vmy[:]) & vmz[:] : vmz[:] |
| NNDM | __vm512 _ve_nndm_MMM(__vm512 vmy, __vm512 vmz) | nndm | vmx[:] = vmy[:] ? (~vmy[:]) & vmz[:] : vmz[:] |
| NEGM | __vm256 _ve_negm_mm(__vm256 vmy) | negm | vmx[:] = vmx[:] ? ~vmy[:] : vmy[:] |
| NEGM | __vm512 _ve_negm_MM(__vm512 vmy) | negm | vmx[:] = vmx[:] ? ~vmy[:] : vmy[:] |
| PCVM | unsigned long int _ve_pcvm_sm(__vm256 vmy) | pcvm |  |
| LZVM | unsigned long int _ve_lzvm_sm(__vm256 vmy) | lzvm |  |
| TOVM | unsigned long int _ve_tovm_sm(__vm256 vmy) | tovm |  |

## 9 Vector Control Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| LVL | void _ve_lvl(int vl) | lvl |  |
| SVL | not yet implemented |  |  |
| SMVL | not yet implemented |  |  |
| LVIX | not yet implemented |  |  |

## 10 Control Instructions

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
| SVOB | void _ve_svob(void) | svob |  |

## 11 Others

| Instruction | Function | asm | Description |
| --- | --- | --- | --- |
|  | unsigned long int _ve_pack_f32p(float const* p0, float const* p1) | ldu,ldl,or |  |
|  | unsigned long int _ve_pack_f32a(float const* p) | load and mul |  |
|  | unsigned long int _ve_pack_i32(int a, int b) | sll,add,or |  |
|  | __vr _ve_vec_expf_vv(__vr vy) |  | vx[:] = expf(vy[:]) |
|  | __vr _ve_vec_exp_vv(__vr vy) |  | vx[:] = exp(vy[:]) |
|  | __vm _ve_extract_vm512u(__vm512 vm) |  |  |
|  | __vm _ve_extract_vm512l(__vm512 vm) |  |  |
|  | __vm512 _ve_insert_vm512u(__vm512 vmx, __vm vmy) |  |  |
|  | __vm512 _ve_insert_vm512l(__vm512 vmx, __vm vmy) |  |  |

---
