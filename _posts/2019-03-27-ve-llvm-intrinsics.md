---
layout: post
title: VE LLVM Intrinsics
author: Erich Focht
excerpt: "The VE intrinsics available in the LLVM backend for the SX-Aurora TSUBASA Vector Engine"
category: posts
tags: [llvm, compiler, vector, sxaurora, intrinsics, builtins]
---


<a href="#sec0">5.3.2.7. Vector Transfer Instructions</a><br>
<a href="#sec1">5.3.2.8. Vector Fixed-Point Arithmetic Operation Instructions</a><br>
<a href="#sec2">5.3.2.9. Vector Logical Arithmetic Operation Instructions</a><br>
<a href="#sec3">5.3.2.10. Vector Shift Instructions</a><br>
<a href="#sec4">5.3.2.11. Vector Floating-Point Operation Instructions</a><br>
<a href="#sec5">5.3.2.12. Vector Mask Arithmetic Instructions</a><br>
<a href="#sec6">5.3.2.13. Vector Recursive Relation Instructions</a><br>
<a href="#sec7">5.3.2.14. Vector Gathering/Scattering Instructions</a><br>
<a href="#sec8">5.3.2.15. Vector Mask Register Instructions</a><br>
<a href="#sec9">5.3.2.16. Vector Control Instructions</a><br>
<a href="#sec10">5.3.2.17. Control Instructions</a><br>
<a href="#sec11">Others</a><br>
<h3><a name="sec0">5.3.2.7. Vector Transfer Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=2>VLD</td>
<td>__vr _ve_vld_vss(unsigned long int sy, void const* sz)</td><td>vld</td><td></td></tr>
<tr>
<td>__vr _ve_vld_vss(unsigned long int I, void const* sz)</td><td>vld</td><td></td></tr>
<tr>
<td rowspan=2>VLDU</td>
<td>__vr _ve_vldu_vss(unsigned long int sy, void const* sz)</td><td>vldu</td><td></td></tr>
<tr>
<td>__vr _ve_vldu_vss(unsigned long int I, void const* sz)</td><td>vldu</td><td></td></tr>
<tr>
<td rowspan=4>VLDL</td>
<td>__vr _ve_vldlsx_vss(unsigned long int sy, void const* sz)</td><td>vldl.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vldlsx_vss(unsigned long int I, void const* sz)</td><td>vldl.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vldlzx_vss(unsigned long int sy, void const* sz)</td><td>vldl.zx</td><td></td></tr>
<tr>
<td>__vr _ve_vldlzx_vss(unsigned long int I, void const* sz)</td><td>vldl.zx</td><td></td></tr>
<tr>
<td rowspan=2>VLD2D</td>
<td>__vr _ve_vld2d_vss(unsigned long int sy, void const* sz)</td><td>vld2d</td><td></td></tr>
<tr>
<td>__vr _ve_vld2d_vss(unsigned long int I, void const* sz)</td><td>vld2d</td><td></td></tr>
<tr>
<td rowspan=2>VLDU2D</td>
<td>__vr _ve_vldu2d_vss(unsigned long int sy, void const* sz)</td><td>vldu2d</td><td></td></tr>
<tr>
<td>__vr _ve_vldu2d_vss(unsigned long int I, void const* sz)</td><td>vldu2d</td><td></td></tr>
<tr>
<td rowspan=4>VLDL2D</td>
<td>__vr _ve_vldl2dsx_vss(unsigned long int sy, void const* sz)</td><td>vldl2d.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vldl2dsx_vss(unsigned long int I, void const* sz)</td><td>vldl2d.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vldl2dzx_vss(unsigned long int sy, void const* sz)</td><td>vldl2d.zx</td><td></td></tr>
<tr>
<td>__vr _ve_vldl2dzx_vss(unsigned long int I, void const* sz)</td><td>vldl2d.zx</td><td></td></tr>
<tr>
<td rowspan=4>VST</td>
<td>void _ve_vst_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vst</td><td></td></tr>
<tr>
<td>void _ve_vst_vss(__vr vx, unsigned long int I, void* sz)</td><td>vst</td><td></td></tr>
<tr>
<td>void _ve_vstot_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vst.ot</td><td></td></tr>
<tr>
<td>void _ve_vstot_vss(__vr vx, unsigned long int I, void* sz)</td><td>vst.ot</td><td></td></tr>
<tr>
<td rowspan=4>VSTU</td>
<td>void _ve_vstu_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vstu</td><td></td></tr>
<tr>
<td>void _ve_vstu_vss(__vr vx, unsigned long int I, void* sz)</td><td>vstu</td><td></td></tr>
<tr>
<td>void _ve_vstuot_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vstu.ot</td><td></td></tr>
<tr>
<td>void _ve_vstuot_vss(__vr vx, unsigned long int I, void* sz)</td><td>vstu.ot</td><td></td></tr>
<tr>
<td rowspan=4>VSTL</td>
<td>void _ve_vstl_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vstl</td><td></td></tr>
<tr>
<td>void _ve_vstl_vss(__vr vx, unsigned long int I, void* sz)</td><td>vstl</td><td></td></tr>
<tr>
<td>void _ve_vstlot_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vstl.ot</td><td></td></tr>
<tr>
<td>void _ve_vstlot_vss(__vr vx, unsigned long int I, void* sz)</td><td>vstl.ot</td><td></td></tr>
<tr>
<td rowspan=4>VST2D</td>
<td>void _ve_vst2d_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vst2d</td><td></td></tr>
<tr>
<td>void _ve_vst2d_vss(__vr vx, unsigned long int I, void* sz)</td><td>vst2d</td><td></td></tr>
<tr>
<td>void _ve_vst2dot_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vst2d.ot</td><td></td></tr>
<tr>
<td>void _ve_vst2dot_vss(__vr vx, unsigned long int I, void* sz)</td><td>vst2d.ot</td><td></td></tr>
<tr>
<td rowspan=4>VSTU2D</td>
<td>void _ve_vstu2d_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vstu2d</td><td></td></tr>
<tr>
<td>void _ve_vstu2d_vss(__vr vx, unsigned long int I, void* sz)</td><td>vstu2d</td><td></td></tr>
<tr>
<td>void _ve_vstu2dot_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vstu2d.ot</td><td></td></tr>
<tr>
<td>void _ve_vstu2dot_vss(__vr vx, unsigned long int I, void* sz)</td><td>vstu2d.ot</td><td></td></tr>
<tr>
<td rowspan=4>VSTL2D</td>
<td>void _ve_vstl2d_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vstl2d</td><td></td></tr>
<tr>
<td>void _ve_vstl2d_vss(__vr vx, unsigned long int I, void* sz)</td><td>vstl2d</td><td></td></tr>
<tr>
<td>void _ve_vstl2dot_vss(__vr vx, unsigned long int sy, void* sz)</td><td>vstl2d.ot</td><td></td></tr>
<tr>
<td>void _ve_vstl2dot_vss(__vr vx, unsigned long int I, void* sz)</td><td>vstl2d.ot</td><td></td></tr>
<tr>
<td rowspan=2>PFCHV</td>
<td>void _ve_pfchv(long int sy, void const* sz)</td><td>pfchv</td><td></td></tr>
<tr>
<td>void _ve_pfchv(long int I, void const* sz)</td><td>pfchv</td><td></td></tr>
<tr>
<td rowspan=1>LSV</td>
<td>__vr _ve_lsv_vvss(__vr vx, unsigned int sy, unsigned long int sz)</td><td>lsv</td><td></td></tr>
<tr>
<td rowspan=3>LVS</td>
<td>unsigned long int _ve_lvs_svs_u64(__vr vx, unsigned int sy)</td><td>lvs</td><td></td></tr>
<tr>
<td>double _ve_lvs_svs_f64(__vr vx, unsigned int sy)</td><td>lvs</td><td></td></tr>
<tr>
<td>float _ve_lvs_svs_f32(__vr vx, unsigned int sy)</td><td>lvs</td><td></td></tr>
<tr>
<td rowspan=3>LVM</td>
<td>__vm256 _ve_lvm_mmss(__vm256 vmd, unsigned long int sy, unsigned long int sz)</td><td>lvm</td><td></td></tr>
<tr>
<td>__vm256 _ve_lvm_mmss(__vm256 vmd, unsigned long int N, unsigned long int sz)</td><td>lvm</td><td></td></tr>
<tr>
<td>__vm512 _ve_lvm_MMss(__vm512 vmd, unsigned long int N, unsigned long int sz)</td><td>lvm</td><td></td></tr>
<tr>
<td rowspan=3>SVM</td>
<td>unsigned long int _ve_svm_sms(__vm256 vmz, unsigned long int sy)</td><td>svm</td><td></td></tr>
<tr>
<td>unsigned long int _ve_svm_sms(__vm256 vmz, unsigned long int N)</td><td>svm</td><td></td></tr>
<tr>
<td>unsigned long int _ve_svm_sMs(__vm512 vmz, unsigned long int N)</td><td>svm</td><td></td></tr>
<tr>
<td rowspan=14>VBRD</td>
<td>__vr _ve_vbrd_vs_f64(double sy)</td><td>vbrd</td><td>vx[:] = sy</td></tr>
<tr>
<td>__vr _ve_vbrd_vsmv_f64(double sy, __vm256 vm, __vr vd)</td><td>vbrd</td><td>vx[:] = vm[:] ? sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vbrd_vs_i64(long int sy)</td><td>vbrd</td><td>vx[:] = sy</td></tr>
<tr>
<td>__vr _ve_vbrd_vsmv_i64(long int sy, __vm256 vm, __vr vd)</td><td>vbrd</td><td>vx[:] = vm[:] ? sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vbrd_vs_i64(long int I)</td><td>vbrd</td><td>vx[:] = I</td></tr>
<tr>
<td>__vr _ve_vbrd_vsmv_i64(long int I, __vm256 vm, __vr vd)</td><td>vbrd</td><td>vx[:] = vm[:] ? I : vd[:]</td></tr>
<tr>
<td>__vr _ve_vbrdu_vs_f32(float sy)</td><td>vbrdu</td><td>vx[:] = sy</td></tr>
<tr>
<td>__vr _ve_vbrdu_vsmv_f32(float sy, __vm256 vm, __vr vd)</td><td>vbrdu</td><td>vx[:] = vm[:] ? sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vbrdl_vs_i32(int sy)</td><td>vbrdl</td><td>vx[:] = sy</td></tr>
<tr>
<td>__vr _ve_vbrdl_vsmv_i32(int sy, __vm256 vm, __vr vd)</td><td>vbrdl</td><td>vx[:] = vm[:] ? sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vbrdl_vs_i32(int I)</td><td>vbrdl</td><td>vx[:] = I</td></tr>
<tr>
<td>__vr _ve_vbrdl_vsmv_i32(int I, __vm256 vm, __vr vd)</td><td>vbrdl</td><td>vx[:] = vm[:] ? I : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvbrd_vs_i64(unsigned long int sy)</td><td>pvbrd</td><td>vx[:] = sy</td></tr>
<tr>
<td>__vr _ve_pvbrd_vsMv_i64(unsigned long int sy, __vm512 vm, __vr vd)</td><td>pvbrd</td><td>vx[:] = vm[:] ? sy : vd[:]</td></tr>
<tr>
<td rowspan=2>VMV</td>
<td>__vr _ve_vmv_vsv(unsigned int sy, __vr vz)</td><td>vmv</td><td></td></tr>
<tr>
<td>__vr _ve_vmv_vsv(unsigned int N, __vr vz)</td><td>vmv</td><td></td></tr>
</table>
<h3><a name="sec1">5.3.2.8. Vector Fixed-Point Arithmetic Operation Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=16>VADD</td>
<td>__vr _ve_vaddul_vvv(__vr vy, __vr vz)</td><td>vaddu.l</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddul_vsv(unsigned long int sy, __vr vz)</td><td>vaddu.l</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddul_vsv(unsigned long int I, __vr vz)</td><td>vaddu.l</td><td>vx[:] = I + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vaddu.l</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vaddu.l</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vaddu.l</td><td>vx[:] = vm[:] ? I + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vadduw_vvv(__vr vy, __vr vz)</td><td>vaddu.w</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_vadduw_vsv(unsigned int sy, __vr vz)</td><td>vaddu.w</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_vadduw_vsv(unsigned int I, __vr vz)</td><td>vaddu.w</td><td>vx[:] = I + vz[:]</td></tr>
<tr>
<td>__vr _ve_vadduw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vaddu.w</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vadduw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vaddu.w</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vadduw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd)</td><td>vaddu.w</td><td>vx[:] = vm[:] ? I + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvaddu_vvv(__vr vy, __vr vz)</td><td>pvaddu</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_pvaddu_vsv(unsigned long int sy, __vr vz)</td><td>pvaddu</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_pvaddu_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvaddu</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvaddu_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvaddu</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=16>VADS</td>
<td>__vr _ve_vaddswsx_vvv(__vr vy, __vr vz)</td><td>vadds.w.sx</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddswsx_vsv(int sy, __vr vz)</td><td>vadds.w.sx</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddswsx_vsv(int I, __vr vz)</td><td>vadds.w.sx</td><td>vx[:] = I + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.w.sx</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.w.sx</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.w.sx</td><td>vx[:] = vm[:] ? I + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddswzx_vvv(__vr vy, __vr vz)</td><td>vadds.w.zx</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddswzx_vsv(int sy, __vr vz)</td><td>vadds.w.zx</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddswzx_vsv(int I, __vr vz)</td><td>vadds.w.zx</td><td>vx[:] = I + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.w.zx</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.w.zx</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.w.zx</td><td>vx[:] = vm[:] ? I + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvadds_vvv(__vr vy, __vr vz)</td><td>pvadds</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_pvadds_vsv(unsigned long int sy, __vr vz)</td><td>pvadds</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_pvadds_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvadds</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvadds_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvadds</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=6>VADX</td>
<td>__vr _ve_vaddsl_vvv(__vr vy, __vr vz)</td><td>vadds.l</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddsl_vsv(long int sy, __vr vz)</td><td>vadds.l</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddsl_vsv(long int I, __vr vz)</td><td>vadds.l</td><td>vx[:] = I + vz[:]</td></tr>
<tr>
<td>__vr _ve_vaddsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.l</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.l</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vaddsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vadds.l</td><td>vx[:] = vm[:] ? I + vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=16>VSUB</td>
<td>__vr _ve_vsubul_vvv(__vr vy, __vr vz)</td><td>vsubu.l</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubul_vsv(unsigned long int sy, __vr vz)</td><td>vsubu.l</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubul_vsv(unsigned long int I, __vr vz)</td><td>vsubu.l</td><td>vx[:] = I - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubu.l</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubu.l</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vsubu.l</td><td>vx[:] = vm[:] ? I - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubuw_vvv(__vr vy, __vr vz)</td><td>vsubu.w</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubuw_vsv(unsigned int sy, __vr vz)</td><td>vsubu.w</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubuw_vsv(unsigned int I, __vr vz)</td><td>vsubu.w</td><td>vx[:] = I - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubuw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubu.w</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubuw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubu.w</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubuw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd)</td><td>vsubu.w</td><td>vx[:] = vm[:] ? I - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsubu_vvv(__vr vy, __vr vz)</td><td>pvsubu</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_pvsubu_vsv(unsigned long int sy, __vr vz)</td><td>pvsubu</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_pvsubu_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvsubu</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsubu_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvsubu</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=16>VSBS</td>
<td>__vr _ve_vsubswsx_vvv(__vr vy, __vr vz)</td><td>vsubs.w.sx</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubswsx_vsv(int sy, __vr vz)</td><td>vsubs.w.sx</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubswsx_vsv(int I, __vr vz)</td><td>vsubs.w.sx</td><td>vx[:] = I - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.w.sx</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.w.sx</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.w.sx</td><td>vx[:] = vm[:] ? I - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubswzx_vvv(__vr vy, __vr vz)</td><td>vsubs.w.zx</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubswzx_vsv(int sy, __vr vz)</td><td>vsubs.w.zx</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubswzx_vsv(int I, __vr vz)</td><td>vsubs.w.zx</td><td>vx[:] = I - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.w.zx</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.w.zx</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.w.zx</td><td>vx[:] = vm[:] ? I - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsubs_vvv(__vr vy, __vr vz)</td><td>pvsubs</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_pvsubs_vsv(unsigned long int sy, __vr vz)</td><td>pvsubs</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_pvsubs_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvsubs</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsubs_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvsubs</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=6>VSBX</td>
<td>__vr _ve_vsubsl_vvv(__vr vy, __vr vz)</td><td>vsubs.l</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubsl_vsv(long int sy, __vr vz)</td><td>vsubs.l</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubsl_vsv(long int I, __vr vz)</td><td>vsubs.l</td><td>vx[:] = I - vz[:]</td></tr>
<tr>
<td>__vr _ve_vsubsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.l</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.l</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsubsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vsubs.l</td><td>vx[:] = vm[:] ? I - vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=12>VMPY</td>
<td>__vr _ve_vmulul_vvv(__vr vy, __vr vz)</td><td>vmulu.l</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulul_vsv(unsigned long int sy, __vr vz)</td><td>vmulu.l</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulul_vsv(unsigned long int I, __vr vz)</td><td>vmulu.l</td><td>vx[:] = I * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmulu.l</td><td>vx[:] = vm[:] ? vy[:] * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmulu.l</td><td>vx[:] = vm[:] ? sy * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmulu.l</td><td>vx[:] = vm[:] ? I * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmuluw_vvv(__vr vy, __vr vz)</td><td>vmulu.w</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmuluw_vsv(unsigned int sy, __vr vz)</td><td>vmulu.w</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmuluw_vsv(unsigned int I, __vr vz)</td><td>vmulu.w</td><td>vx[:] = I * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmuluw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmulu.w</td><td>vx[:] = vm[:] ? vy[:] * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmuluw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmulu.w</td><td>vx[:] = vm[:] ? sy * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmuluw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmulu.w</td><td>vx[:] = vm[:] ? I * vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=12>VMPS</td>
<td>__vr _ve_vmulswsx_vvv(__vr vy, __vr vz)</td><td>vmuls.w.sx</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulswsx_vsv(int sy, __vr vz)</td><td>vmuls.w.sx</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulswsx_vsv(int I, __vr vz)</td><td>vmuls.w.sx</td><td>vx[:] = I * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.w.sx</td><td>vx[:] = vm[:] ? vy[:] * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.w.sx</td><td>vx[:] = vm[:] ? sy * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.w.sx</td><td>vx[:] = vm[:] ? I * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulswzx_vvv(__vr vy, __vr vz)</td><td>vmuls.w.zx</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulswzx_vsv(int sy, __vr vz)</td><td>vmuls.w.zx</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulswzx_vsv(int I, __vr vz)</td><td>vmuls.w.zx</td><td>vx[:] = I * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.w.zx</td><td>vx[:] = vm[:] ? vy[:] * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.w.zx</td><td>vx[:] = vm[:] ? sy * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.w.zx</td><td>vx[:] = vm[:] ? I * vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=6>VMPX</td>
<td>__vr _ve_vmulsl_vvv(__vr vy, __vr vz)</td><td>vmuls.l</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulsl_vsv(long int sy, __vr vz)</td><td>vmuls.l</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulsl_vsv(long int I, __vr vz)</td><td>vmuls.l</td><td>vx[:] = I * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.l</td><td>vx[:] = vm[:] ? vy[:] * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.l</td><td>vx[:] = vm[:] ? sy * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmulsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmuls.l</td><td>vx[:] = vm[:] ? I * vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=3>VMPD</td>
<td>__vr _ve_vmulslw_vvv(__vr vy, __vr vz)</td><td>vmuls.l.w</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulslw_vsv(int sy, __vr vz)</td><td>vmuls.l.w</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_vmulslw_vsv(int I, __vr vz)</td><td>vmuls.l.w</td><td>vx[:] = I * vz[:]</td></tr>
<tr>
<td rowspan=20>VDIV</td>
<td>__vr _ve_vdivul_vvv(__vr vy, __vr vz)</td><td>vdivu.l</td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivul_vsv(unsigned long int sy, __vr vz)</td><td>vdivu.l</td><td>vx[:] = sy / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivul_vsv(unsigned long int I, __vr vz)</td><td>vdivu.l</td><td>vx[:] = I / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivu.l</td><td>vx[:] = vm[:] ? vy[:] / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivu.l</td><td>vx[:] = vm[:] ? sy / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vdivu.l</td><td>vx[:] = vm[:] ? I / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivuw_vvv(__vr vy, __vr vz)</td><td>vdivu.w</td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivuw_vsv(unsigned int sy, __vr vz)</td><td>vdivu.w</td><td>vx[:] = sy / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivuw_vsv(unsigned int I, __vr vz)</td><td>vdivu.w</td><td>vx[:] = I / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivuw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivu.w</td><td>vx[:] = vm[:] ? vy[:] / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivuw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivu.w</td><td>vx[:] = vm[:] ? sy / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivuw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd)</td><td>vdivu.w</td><td>vx[:] = vm[:] ? I / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivul_vvs(__vr vy, unsigned long int sy)</td><td>vdivu.l</td><td>vx[:] = vy[:] / sy</td></tr>
<tr>
<td>__vr _ve_vdivul_vvs(__vr vy, unsigned long int I)</td><td>vdivu.l</td><td>vx[:] = vy[:] / I</td></tr>
<tr>
<td>__vr _ve_vdivul_vvsmv(__vr vy, unsigned long int sy, __vm256 vm, __vr vd)</td><td>vdivu.l</td><td>vx[:] = vm[:] ? vy[:] / sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivul_vvsmv(__vr vy, unsigned long int I, __vm256 vm, __vr vd)</td><td>vdivu.l</td><td>vx[:] = vm[:] ? vy[:] / I : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivuw_vvs(__vr vy, unsigned int sy)</td><td>vdivu.w</td><td>vx[:] = vy[:] / sy</td></tr>
<tr>
<td>__vr _ve_vdivuw_vvs(__vr vy, unsigned int I)</td><td>vdivu.w</td><td>vx[:] = vy[:] / I</td></tr>
<tr>
<td>__vr _ve_vdivuw_vvsmv(__vr vy, unsigned int sy, __vm256 vm, __vr vd)</td><td>vdivu.w</td><td>vx[:] = vm[:] ? vy[:] / sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivuw_vvsmv(__vr vy, unsigned int I, __vm256 vm, __vr vd)</td><td>vdivu.w</td><td>vx[:] = vm[:] ? vy[:] / I : vd[:]</td></tr>
<tr>
<td rowspan=20>VDVS</td>
<td>__vr _ve_vdivswsx_vvv(__vr vy, __vr vz)</td><td>vdivs.w.sx</td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vsv(int sy, __vr vz)</td><td>vdivs.w.sx</td><td>vx[:] = sy / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vsv(int I, __vr vz)</td><td>vdivs.w.sx</td><td>vx[:] = I / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.w.sx</td><td>vx[:] = vm[:] ? vy[:] / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.w.sx</td><td>vx[:] = vm[:] ? sy / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.w.sx</td><td>vx[:] = vm[:] ? I / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vvv(__vr vy, __vr vz)</td><td>vdivs.w.zx</td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vsv(int sy, __vr vz)</td><td>vdivs.w.zx</td><td>vx[:] = sy / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vsv(int I, __vr vz)</td><td>vdivs.w.zx</td><td>vx[:] = I / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.w.zx</td><td>vx[:] = vm[:] ? vy[:] / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.w.zx</td><td>vx[:] = vm[:] ? sy / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.w.zx</td><td>vx[:] = vm[:] ? I / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vvs(__vr vy, int sy)</td><td>vdivs.w.sx</td><td>vx[:] = vy[:] / sy</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vvs(__vr vy, int I)</td><td>vdivs.w.sx</td><td>vx[:] = vy[:] / I</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vvsmv(__vr vy, int sy, __vm256 vm, __vr vd)</td><td>vdivs.w.sx</td><td>vx[:] = vm[:] ? vy[:] / sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswsx_vvsmv(__vr vy, int I, __vm256 vm, __vr vd)</td><td>vdivs.w.sx</td><td>vx[:] = vm[:] ? vy[:] / I : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vvs(__vr vy, int sy)</td><td>vdivs.w.zx</td><td>vx[:] = vy[:] / sy</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vvs(__vr vy, int I)</td><td>vdivs.w.zx</td><td>vx[:] = vy[:] / I</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vvsmv(__vr vy, int sy, __vm256 vm, __vr vd)</td><td>vdivs.w.zx</td><td>vx[:] = vm[:] ? vy[:] / sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivswzx_vvsmv(__vr vy, int I, __vm256 vm, __vr vd)</td><td>vdivs.w.zx</td><td>vx[:] = vm[:] ? vy[:] / I : vd[:]</td></tr>
<tr>
<td rowspan=10>VDVX</td>
<td>__vr _ve_vdivsl_vvv(__vr vy, __vr vz)</td><td>vdivs.l</td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivsl_vsv(long int sy, __vr vz)</td><td>vdivs.l</td><td>vx[:] = sy / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivsl_vsv(long int I, __vr vz)</td><td>vdivs.l</td><td>vx[:] = I / vz[:]</td></tr>
<tr>
<td>__vr _ve_vdivsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.l</td><td>vx[:] = vm[:] ? vy[:] / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.l</td><td>vx[:] = vm[:] ? sy / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vdivs.l</td><td>vx[:] = vm[:] ? I / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivsl_vvs(__vr vy, long int sy)</td><td>vdivs.l</td><td>vx[:] = vy[:] / sy</td></tr>
<tr>
<td>__vr _ve_vdivsl_vvs(__vr vy, long int I)</td><td>vdivs.l</td><td>vx[:] = vy[:] / I</td></tr>
<tr>
<td>__vr _ve_vdivsl_vvsmv(__vr vy, long int sy, __vm256 vm, __vr vd)</td><td>vdivs.l</td><td>vx[:] = vm[:] ? vy[:] / sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vdivsl_vvsmv(__vr vy, long int I, __vm256 vm, __vr vd)</td><td>vdivs.l</td><td>vx[:] = vm[:] ? vy[:] / I : vd[:]</td></tr>
<tr>
<td rowspan=16>VCMP</td>
<td>__vr _ve_vcmpul_vvv(__vr vy, __vr vz)</td><td>vcmpu.l</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpul_vsv(unsigned long int sy, __vr vz)</td><td>vcmpu.l</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpul_vsv(unsigned long int I, __vr vz)</td><td>vcmpu.l</td><td>vx[:] = compare(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpul_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmpu.l</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpul_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmpu.l</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpul_vsvmv(unsigned long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vcmpu.l</td><td>vx[:] = vm[:] ? compare(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpuw_vvv(__vr vy, __vr vz)</td><td>vcmpu.w</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpuw_vsv(unsigned int sy, __vr vz)</td><td>vcmpu.w</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpuw_vsv(unsigned int I, __vr vz)</td><td>vcmpu.w</td><td>vx[:] = compare(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpuw_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmpu.w</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpuw_vsvmv(unsigned int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmpu.w</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpuw_vsvmv(unsigned int I, __vr vz, __vm256 vm, __vr vd)</td><td>vcmpu.w</td><td>vx[:] = vm[:] ? compare(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvcmpu_vvv(__vr vy, __vr vz)</td><td>pvcmpu</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_pvcmpu_vsv(unsigned long int sy, __vr vz)</td><td>pvcmpu</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_pvcmpu_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvcmpu</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvcmpu_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvcmpu</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td rowspan=16>VCPS</td>
<td>__vr _ve_vcmpswsx_vvv(__vr vy, __vr vz)</td><td>vcmps.w.sx</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpswsx_vsv(int sy, __vr vz)</td><td>vcmps.w.sx</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpswsx_vsv(int I, __vr vz)</td><td>vcmps.w.sx</td><td>vx[:] = compare(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.w.sx</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.w.sx</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.w.sx</td><td>vx[:] = vm[:] ? compare(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpswzx_vvv(__vr vy, __vr vz)</td><td>vcmps.w.zx</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpswzx_vsv(int sy, __vr vz)</td><td>vcmps.w.zx</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpswzx_vsv(int I, __vr vz)</td><td>vcmps.w.zx</td><td>vx[:] = compare(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.w.zx</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.w.zx</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.w.zx</td><td>vx[:] = vm[:] ? compare(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvcmps_vvv(__vr vy, __vr vz)</td><td>pvcmps</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_pvcmps_vsv(unsigned long int sy, __vr vz)</td><td>pvcmps</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_pvcmps_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvcmps</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvcmps_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvcmps</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td rowspan=6>VCPX</td>
<td>__vr _ve_vcmpsl_vvv(__vr vy, __vr vz)</td><td>vcmps.l</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpsl_vsv(long int sy, __vr vz)</td><td>vcmps.l</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpsl_vsv(long int I, __vr vz)</td><td>vcmps.l</td><td>vx[:] = compare(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vcmpsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.l</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.l</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcmpsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vcmps.l</td><td>vx[:] = vm[:] ? compare(I, vz[:]) : vd[:]</td></tr>
<tr>
<td rowspan=32>VCMS</td>
<td>__vr _ve_vmaxswsx_vvv(__vr vy, __vr vz)</td><td>vmaxs.w.sx</td><td>vx[:] = max(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxswsx_vsv(int sy, __vr vz)</td><td>vmaxs.w.sx</td><td>vx[:] = max(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxswsx_vsv(int I, __vr vz)</td><td>vmaxs.w.sx</td><td>vx[:] = max(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.w.sx</td><td>vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmaxswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.w.sx</td><td>vx[:] = vm[:] ? max(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmaxswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.w.sx</td><td>vx[:] = vm[:] ? max(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmaxswzx_vvv(__vr vy, __vr vz)</td><td>vmaxs.w.zx</td><td>vx[:] = max(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxswzx_vsv(int sy, __vr vz)</td><td>vmaxs.w.zx</td><td>vx[:] = max(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxswzx_vsv(int I, __vr vz)</td><td>vmaxs.w.zx</td><td>vx[:] = max(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.w.zx</td><td>vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmaxswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.w.zx</td><td>vx[:] = vm[:] ? max(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmaxswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.w.zx</td><td>vx[:] = vm[:] ? max(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvmaxs_vvv(__vr vy, __vr vz)</td><td>pvmaxs</td><td>vx[:] = max(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_pvmaxs_vsv(unsigned long int sy, __vr vz)</td><td>pvmaxs</td><td>vx[:] = max(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_pvmaxs_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvmaxs</td><td>vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvmaxs_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvmaxs</td><td>vx[:] = vm[:] ? max(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminswsx_vvv(__vr vy, __vr vz)</td><td>vmins.w.sx</td><td>vx[:] = min(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vminswsx_vsv(int sy, __vr vz)</td><td>vmins.w.sx</td><td>vx[:] = min(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vminswsx_vsv(int I, __vr vz)</td><td>vmins.w.sx</td><td>vx[:] = min(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vminswsx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.w.sx</td><td>vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminswsx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.w.sx</td><td>vx[:] = vm[:] ? min(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminswsx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.w.sx</td><td>vx[:] = vm[:] ? min(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminswzx_vvv(__vr vy, __vr vz)</td><td>vmins.w.zx</td><td>vx[:] = min(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vminswzx_vsv(int sy, __vr vz)</td><td>vmins.w.zx</td><td>vx[:] = min(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vminswzx_vsv(int I, __vr vz)</td><td>vmins.w.zx</td><td>vx[:] = min(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vminswzx_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.w.zx</td><td>vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminswzx_vsvmv(int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.w.zx</td><td>vx[:] = vm[:] ? min(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminswzx_vsvmv(int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.w.zx</td><td>vx[:] = vm[:] ? min(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvmins_vvv(__vr vy, __vr vz)</td><td>pvmins</td><td>vx[:] = min(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_pvmins_vsv(unsigned long int sy, __vr vz)</td><td>pvmins</td><td>vx[:] = min(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_pvmins_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvmins</td><td>vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvmins_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvmins</td><td>vx[:] = vm[:] ? min(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td rowspan=12>VCMX</td>
<td>__vr _ve_vmaxsl_vvv(__vr vy, __vr vz)</td><td>vmaxs.l</td><td>vx[:] = max(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxsl_vsv(long int sy, __vr vz)</td><td>vmaxs.l</td><td>vx[:] = max(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxsl_vsv(long int I, __vr vz)</td><td>vmaxs.l</td><td>vx[:] = max(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vmaxsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.l</td><td>vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmaxsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.l</td><td>vx[:] = vm[:] ? max(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vmaxsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmaxs.l</td><td>vx[:] = vm[:] ? max(I, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminsl_vvv(__vr vy, __vr vz)</td><td>vmins.l</td><td>vx[:] = min(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vminsl_vsv(long int sy, __vr vz)</td><td>vmins.l</td><td>vx[:] = min(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vminsl_vsv(long int I, __vr vz)</td><td>vmins.l</td><td>vx[:] = min(I, vz[:])</td></tr>
<tr>
<td>__vr _ve_vminsl_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.l</td><td>vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminsl_vsvmv(long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.l</td><td>vx[:] = vm[:] ? min(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vminsl_vsvmv(long int I, __vr vz, __vm256 vm, __vr vd)</td><td>vmins.l</td><td>vx[:] = vm[:] ? min(I, vz[:]) : vd[:]</td></tr>
</table>
<h3><a name="sec2">5.3.2.9. Vector Logical Arithmetic Operation Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=8>VAND</td>
<td>__vr _ve_vand_vvv(__vr vy, __vr vz)</td><td>vand</td><td>vx[:] = vy[:] & vz[:]</td></tr>
<tr>
<td>__vr _ve_vand_vsv(unsigned long int sy, __vr vz)</td><td>vand</td><td>vx[:] = sy & vz[:]</td></tr>
<tr>
<td>__vr _ve_vand_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vand</td><td>vx[:] = vm[:] ? vy[:] & vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vand_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vand</td><td>vx[:] = vm[:] ? sy & vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvand_vvv(__vr vy, __vr vz)</td><td>pvand</td><td>vx[:] = vy[:] & vz[:]</td></tr>
<tr>
<td>__vr _ve_pvand_vsv(unsigned long int sy, __vr vz)</td><td>pvand</td><td>vx[:] = sy & vz[:]</td></tr>
<tr>
<td>__vr _ve_pvand_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvand</td><td>vx[:] = vm[:] ? vy[:] & vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvand_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvand</td><td>vx[:] = vm[:] ? sy & vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=8>VOR</td>
<td>__vr _ve_vor_vvv(__vr vy, __vr vz)</td><td>vor</td><td>vx[:] = vy[:] | vz[:]</td></tr>
<tr>
<td>__vr _ve_vor_vsv(unsigned long int sy, __vr vz)</td><td>vor</td><td>vx[:] = sy | vz[:]</td></tr>
<tr>
<td>__vr _ve_vor_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vor</td><td>vx[:] = vm[:] ? vy[:] | vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vor_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vor</td><td>vx[:] = vm[:] ? sy | vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvor_vvv(__vr vy, __vr vz)</td><td>pvor</td><td>vx[:] = vy[:] | vz[:]</td></tr>
<tr>
<td>__vr _ve_pvor_vsv(unsigned long int sy, __vr vz)</td><td>pvor</td><td>vx[:] = sy | vz[:]</td></tr>
<tr>
<td>__vr _ve_pvor_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvor</td><td>vx[:] = vm[:] ? vy[:] | vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvor_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvor</td><td>vx[:] = vm[:] ? sy | vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=8>VXOR</td>
<td>__vr _ve_vxor_vvv(__vr vy, __vr vz)</td><td>vxor</td><td>vx[:] = vy[:] ^ vz[:]</td></tr>
<tr>
<td>__vr _ve_vxor_vsv(unsigned long int sy, __vr vz)</td><td>vxor</td><td>vx[:] = sy ^ vz[:]</td></tr>
<tr>
<td>__vr _ve_vxor_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vxor</td><td>vx[:] = vm[:] ? vy[:] ^ vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vxor_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>vxor</td><td>vx[:] = vm[:] ? sy ^ vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvxor_vvv(__vr vy, __vr vz)</td><td>pvxor</td><td>vx[:] = vy[:] ^ vz[:]</td></tr>
<tr>
<td>__vr _ve_pvxor_vsv(unsigned long int sy, __vr vz)</td><td>pvxor</td><td>vx[:] = sy ^ vz[:]</td></tr>
<tr>
<td>__vr _ve_pvxor_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvxor</td><td>vx[:] = vm[:] ? vy[:] ^ vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvxor_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvxor</td><td>vx[:] = vm[:] ? sy ^ vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=8>VEQV</td>
<td>__vr _ve_veqv_vvv(__vr vy, __vr vz)</td><td>veqv</td><td>vx[:] = ~(vy[:] ^ vz[:])</td></tr>
<tr>
<td>__vr _ve_veqv_vsv(unsigned long int sy, __vr vz)</td><td>veqv</td><td>vx[:] = ~(sy ^ vz[:])</td></tr>
<tr>
<td>__vr _ve_veqv_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>veqv</td><td>vx[:] = vm[:] ? ~(vy[:] ^ vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_veqv_vsvmv(unsigned long int sy, __vr vz, __vm256 vm, __vr vd)</td><td>veqv</td><td>vx[:] = vm[:] ? ~(sy ^ vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pveqv_vvv(__vr vy, __vr vz)</td><td>pveqv</td><td>vx[:] = ~(vy[:] ^ vz[:])</td></tr>
<tr>
<td>__vr _ve_pveqv_vsv(unsigned long int sy, __vr vz)</td><td>pveqv</td><td>vx[:] = ~(sy ^ vz[:])</td></tr>
<tr>
<td>__vr _ve_pveqv_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pveqv</td><td>vx[:] = vm[:] ? ~(vy[:] ^ vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pveqv_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pveqv</td><td>vx[:] = vm[:] ? ~(sy ^ vz[:]) : vd[:]</td></tr>
<tr>
<td rowspan=1>VLDZ</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VPCNT</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VBRV</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=4>VSEQ</td>
<td>__vr _ve_vseq_v()</td><td>vseq</td><td>vx[:] = i</td></tr>
<tr>
<td>__vr _ve_pvseqlo_v()</td><td>pvseq.lo</td><td>vx[:] = i</td></tr>
<tr>
<td>__vr _ve_pvsequp_v()</td><td>pvseq.up</td><td>vx[:] = i</td></tr>
<tr>
<td>__vr _ve_pvseq_v()</td><td>pvseq</td><td>vx[:] = i</td></tr>
</table>
<h3><a name="sec3">5.3.2.10. Vector Shift Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=10>VSLL</td>
<td>__vr _ve_vsll_vvv(__vr vz, __vr vy)</td><td>vsll</td><td>vx[:] = vz[:] << (vy[:] & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsll_vvs(__vr vz, unsigned long int sy)</td><td>vsll</td><td>vx[:] = vz[:] << (sy & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsll_vvs(__vr vz, unsigned long int N)</td><td>vsll</td><td>vx[:] = vz[:] << (N & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsll_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd)</td><td>vsll</td><td>vx[:] = vm[:] ? vz[:] << (vy[:] & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsll_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd)</td><td>vsll</td><td>vx[:] = vm[:] ? vz[:] << (sy & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsll_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd)</td><td>vsll</td><td>vx[:] = vm[:] ? vz[:] << (N & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsll_vvv(__vr vz, __vr vy)</td><td>pvsll</td><td>vx[:] = vz[:] << (vy[:] & 0x1f)</td></tr>
<tr>
<td>__vr _ve_pvsll_vvs(__vr vz, unsigned long int sy)</td><td>pvsll</td><td>vx[:] = vz[:] << (sy & 0x1f)</td></tr>
<tr>
<td>__vr _ve_pvsll_vvvMv(__vr vz, __vr vy, __vm512 vm, __vr vd)</td><td>pvsll</td><td>vx[:] = vm[:] ? vz[:] << (vy[:] & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsll_vvsMv(__vr vz, unsigned long int sy, __vm512 vm, __vr vd)</td><td>pvsll</td><td>vx[:] = vm[:] ? vz[:] << (sy & 0x1f) : vd[:]</td></tr>
<tr>
<td rowspan=1>VSLD</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=10>VSRL</td>
<td>__vr _ve_vsrl_vvv(__vr vz, __vr vy)</td><td>vsrl</td><td>vx[:] = vz[:] >> (vy[:] & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsrl_vvs(__vr vz, unsigned long int sy)</td><td>vsrl</td><td>vx[:] = vz[:] >> (sy & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsrl_vvs(__vr vz, unsigned long int N)</td><td>vsrl</td><td>vx[:] = vz[:] >> (N & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsrl_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd)</td><td>vsrl</td><td>vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsrl_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd)</td><td>vsrl</td><td>vx[:] = vm[:] ? vz[:] >> (sy & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsrl_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd)</td><td>vsrl</td><td>vx[:] = vm[:] ? vz[:] >> (N & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsrl_vvv(__vr vz, __vr vy)</td><td>pvsrl</td><td>vx[:] = vz[:] >> (vy[:] & 0x1f)</td></tr>
<tr>
<td>__vr _ve_pvsrl_vvs(__vr vz, unsigned long int sy)</td><td>pvsrl</td><td>vx[:] = vz[:] >> (sy & 0x1f)</td></tr>
<tr>
<td>__vr _ve_pvsrl_vvvMv(__vr vz, __vr vy, __vm512 vm, __vr vd)</td><td>pvsrl</td><td>vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsrl_vvsMv(__vr vz, unsigned long int sy, __vm512 vm, __vr vd)</td><td>pvsrl</td><td>vx[:] = vm[:] ? vz[:] >> (sy & 0x1f) : vd[:]</td></tr>
<tr>
<td rowspan=1>VSRD</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=10>VSLA</td>
<td>__vr _ve_vslaw_vvv(__vr vz, __vr vy)</td><td>vsla.w</td><td>vx[:] = vz[:] << (vy[:] & 0x1f)</td></tr>
<tr>
<td>__vr _ve_vslaw_vvs(__vr vz, unsigned long int sy)</td><td>vsla.w</td><td>vx[:] = vz[:] << (sy & 0x1f)</td></tr>
<tr>
<td>__vr _ve_vslaw_vvs(__vr vz, unsigned long int N)</td><td>vsla.w</td><td>vx[:] = vz[:] << (N & 0x1f)</td></tr>
<tr>
<td>__vr _ve_vslaw_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd)</td><td>vsla.w</td><td>vx[:] = vm[:] ? vz[:] << (vy[:] & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vslaw_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd)</td><td>vsla.w</td><td>vx[:] = vm[:] ? vz[:] << (sy & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vslaw_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd)</td><td>vsla.w</td><td>vx[:] = vm[:] ? vz[:] << (N & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsla_vvv(__vr vz, __vr vy)</td><td>pvsla</td><td>vx[:] = vz[:] << (vy[:] & 0x1f)</td></tr>
<tr>
<td>__vr _ve_pvsla_vvs(__vr vz, unsigned long int sy)</td><td>pvsla</td><td>vx[:] = vz[:] << (sy & 0x1f)</td></tr>
<tr>
<td>__vr _ve_pvsla_vvvMv(__vr vz, __vr vy, __vm512 vm, __vr vd)</td><td>pvsla</td><td>vx[:] = vm[:] ? vz[:] << (vy[:] & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsla_vvsMv(__vr vz, unsigned long int sy, __vm512 vm, __vr vd)</td><td>pvsla</td><td>vx[:] = vm[:] ? vz[:] << (sy & 0x1f) : vd[:]</td></tr>
<tr>
<td rowspan=6>VSLAX</td>
<td>__vr _ve_vslal_vvv(__vr vz, __vr vy)</td><td>vsla.l</td><td>vx[:] = vz[:] << (vy[:] & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vslal_vvs(__vr vz, unsigned long int sy)</td><td>vsla.l</td><td>vx[:] = vz[:] << (sy & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vslal_vvs(__vr vz, unsigned long int N)</td><td>vsla.l</td><td>vx[:] = vz[:] << (N & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vslal_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd)</td><td>vsla.l</td><td>vx[:] = vm[:] ? vz[:] << (vy[:] & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vslal_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd)</td><td>vsla.l</td><td>vx[:] = vm[:] ? vz[:] << (sy & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vslal_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd)</td><td>vsla.l</td><td>vx[:] = vm[:] ? vz[:] << (N & 0x3f) : vd[:]</td></tr>
<tr>
<td rowspan=10>VSRA</td>
<td>__vr _ve_vsraw_vvv(__vr vz, __vr vy)</td><td>vsra.w</td><td>vx[:] = vz[:] >> (vy[:] & 0x1f)</td></tr>
<tr>
<td>__vr _ve_vsraw_vvs(__vr vz, unsigned long int sy)</td><td>vsra.w</td><td>vx[:] = vz[:] >> (sy & 0x1f)</td></tr>
<tr>
<td>__vr _ve_vsraw_vvs(__vr vz, unsigned long int N)</td><td>vsra.w</td><td>vx[:] = vz[:] >> (N & 0x1f)</td></tr>
<tr>
<td>__vr _ve_vsraw_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd)</td><td>vsra.w</td><td>vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsraw_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd)</td><td>vsra.w</td><td>vx[:] = vm[:] ? vz[:] >> (sy & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsraw_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd)</td><td>vsra.w</td><td>vx[:] = vm[:] ? vz[:] >> (N & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsra_vvv(__vr vz, __vr vy)</td><td>pvsra</td><td>vx[:] = vz[:] >> (vy[:] & 0x1f)</td></tr>
<tr>
<td>__vr _ve_pvsra_vvs(__vr vz, unsigned long int sy)</td><td>pvsra</td><td>vx[:] = vz[:] >> (sy & 0x1f)</td></tr>
<tr>
<td>__vr _ve_pvsra_vvvMv(__vr vz, __vr vy, __vm512 vm, __vr vd)</td><td>pvsra</td><td>vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x1f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvsra_vvsMv(__vr vz, unsigned long int sy, __vm512 vm, __vr vd)</td><td>pvsra</td><td>vx[:] = vm[:] ? vz[:] >> (sy & 0x1f) : vd[:]</td></tr>
<tr>
<td rowspan=6>VSRAX</td>
<td>__vr _ve_vsral_vvv(__vr vz, __vr vy)</td><td>vsra.l</td><td>vx[:] = vz[:] >> (vy[:] & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsral_vvs(__vr vz, unsigned long int sy)</td><td>vsra.l</td><td>vx[:] = vz[:] >> (sy & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsral_vvs(__vr vz, unsigned long int N)</td><td>vsra.l</td><td>vx[:] = vz[:] >> (N & 0x3f)</td></tr>
<tr>
<td>__vr _ve_vsral_vvvmv(__vr vz, __vr vy, __vm256 vm, __vr vd)</td><td>vsra.l</td><td>vx[:] = vm[:] ? vz[:] >> (vy[:] & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsral_vvsmv(__vr vz, unsigned long int sy, __vm256 vm, __vr vd)</td><td>vsra.l</td><td>vx[:] = vm[:] ? vz[:] >> (sy & 0x3f) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsral_vvsmv(__vr vz, unsigned long int N, __vm256 vm, __vr vd)</td><td>vsra.l</td><td>vx[:] = vm[:] ? vz[:] >> (N & 0x3f) : vd[:]</td></tr>
<tr>
<td rowspan=4>VSFA</td>
<td>__vr _ve_vsfa_vvss(__vr vz, unsigned long int sy, unsigned long int sz)</td><td>vsfa</td><td>vx[:] = (vz[:] << (sy & 0x7)) + sz</td></tr>
<tr>
<td>__vr _ve_vsfa_vvss(__vr vz, unsigned long int I, unsigned long int sz)</td><td>vsfa</td><td>vx[:] = (vz[:] << (I & 0x7)) + sz</td></tr>
<tr>
<td>__vr _ve_vsfa_vvssmv(__vr vz, unsigned long int sy, unsigned long int sz, __vm256 vm, __vr vd)</td><td>vsfa</td><td>vx[:] = vm[:] ? (vz[:] << (sy & 0x7)) + sz : vd[:]</td></tr>
<tr>
<td>__vr _ve_vsfa_vvssmv(__vr vz, unsigned long int I, unsigned long int sz, __vm256 vm, __vr vd)</td><td>vsfa</td><td>vx[:] = vm[:] ? (vz[:] << (I & 0x7)) + sz : vd[:]</td></tr>
</table>
<h3><a name="sec4">5.3.2.11. Vector Floating-Point Operation Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=12>VFAD</td>
<td>__vr _ve_vfaddd_vvv(__vr vy, __vr vz)</td><td>vfadd.d</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_vfaddd_vsv(double sy, __vr vz)</td><td>vfadd.d</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_vfaddd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfadd.d</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfaddd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfadd.d</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfadds_vvv(__vr vy, __vr vz)</td><td>vfadd.s</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_vfadds_vsv(float sy, __vr vz)</td><td>vfadd.s</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_vfadds_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfadd.s</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfadds_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfadd.s</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfadd_vvv(__vr vy, __vr vz)</td><td>pvfadd</td><td>vx[:] = vy[:] + vz[:]</td></tr>
<tr>
<td>__vr _ve_pvfadd_vsv(unsigned long int sy, __vr vz)</td><td>pvfadd</td><td>vx[:] = sy + vz[:]</td></tr>
<tr>
<td>__vr _ve_pvfadd_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfadd</td><td>vx[:] = vm[:] ? vy[:] + vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfadd_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfadd</td><td>vx[:] = vm[:] ? sy + vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=12>VFSB</td>
<td>__vr _ve_vfsubd_vvv(__vr vy, __vr vz)</td><td>vfsub.d</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_vfsubd_vsv(double sy, __vr vz)</td><td>vfsub.d</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_vfsubd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfsub.d</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfsubd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfsub.d</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfsubs_vvv(__vr vy, __vr vz)</td><td>vfsub.s</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_vfsubs_vsv(float sy, __vr vz)</td><td>vfsub.s</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_vfsubs_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfsub.s</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfsubs_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfsub.s</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfsub_vvv(__vr vy, __vr vz)</td><td>pvfsub</td><td>vx[:] = vy[:] - vz[:]</td></tr>
<tr>
<td>__vr _ve_pvfsub_vsv(unsigned long int sy, __vr vz)</td><td>pvfsub</td><td>vx[:] = sy - vz[:]</td></tr>
<tr>
<td>__vr _ve_pvfsub_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfsub</td><td>vx[:] = vm[:] ? vy[:] - vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfsub_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfsub</td><td>vx[:] = vm[:] ? sy - vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=12>VFMP</td>
<td>__vr _ve_vfmuld_vvv(__vr vy, __vr vz)</td><td>vfmul.d</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_vfmuld_vsv(double sy, __vr vz)</td><td>vfmul.d</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_vfmuld_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmul.d</td><td>vx[:] = vm[:] ? vy[:] * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmuld_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmul.d</td><td>vx[:] = vm[:] ? sy * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmuls_vvv(__vr vy, __vr vz)</td><td>vfmul.s</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_vfmuls_vsv(float sy, __vr vz)</td><td>vfmul.s</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_vfmuls_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmul.s</td><td>vx[:] = vm[:] ? vy[:] * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmuls_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmul.s</td><td>vx[:] = vm[:] ? sy * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmul_vvv(__vr vy, __vr vz)</td><td>pvfmul</td><td>vx[:] = vy[:] * vz[:]</td></tr>
<tr>
<td>__vr _ve_pvfmul_vsv(unsigned long int sy, __vr vz)</td><td>pvfmul</td><td>vx[:] = sy * vz[:]</td></tr>
<tr>
<td>__vr _ve_pvfmul_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfmul</td><td>vx[:] = vm[:] ? vy[:] * vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmul_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfmul</td><td>vx[:] = vm[:] ? sy * vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=8>VFDV</td>
<td>__vr _ve_vfdivd_vvv(__vr vy, __vr vz)</td><td>vfdiv.d</td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td>__vr _ve_vfdivd_vsv(double sy, __vr vz)</td><td>vfdiv.d</td><td>vx[:] = sy / vz[:]</td></tr>
<tr>
<td>__vr _ve_vfdivd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfdiv.d</td><td>vx[:] = vm[:] ? vy[:] / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfdivd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfdiv.d</td><td>vx[:] = vm[:] ? sy / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfdivs_vvv(__vr vy, __vr vz)</td><td>vfdiv.s</td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td>__vr _ve_vfdivs_vsv(float sy, __vr vz)</td><td>vfdiv.s</td><td>vx[:] = sy / vz[:]</td></tr>
<tr>
<td>__vr _ve_vfdivs_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfdiv.s</td><td>vx[:] = vm[:] ? vy[:] / vz[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfdivs_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfdiv.s</td><td>vx[:] = vm[:] ? sy / vz[:] : vd[:]</td></tr>
<tr>
<td rowspan=3></td>
<td>__vr _ve_vfdivsA_vvv(__vr vy, __vr vz)</td><td></td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td>__vr _ve_vfdivsA_vsv(float sy, __vr vz)</td><td></td><td>vx[:] = sy / vz[:]</td></tr>
<tr>
<td>__vr _ve_pvfdivA_vvv(__vr vy, __vr vz)</td><td></td><td>vx[:] = vy[:] / vz[:]</td></tr>
<tr>
<td rowspan=2>VFSQRT</td>
<td>__vr _ve_vfsqrtd_vv(__vr vy)</td><td>vfsqrt.d</td><td>vx[:] = std::sqrt(vy[:])</td></tr>
<tr>
<td>__vr _ve_vfsqrts_vv(__vr vy)</td><td>vfsqrt.s</td><td>vx[:] = std::sqrt(vy[:])</td></tr>
<tr>
<td rowspan=12>VFCP</td>
<td>__vr _ve_vfcmpd_vvv(__vr vy, __vr vz)</td><td>vfcmp.d</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vfcmpd_vsv(double sy, __vr vz)</td><td>vfcmp.d</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vfcmpd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfcmp.d</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfcmpd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfcmp.d</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfcmps_vvv(__vr vy, __vr vz)</td><td>vfcmp.s</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vfcmps_vsv(float sy, __vr vz)</td><td>vfcmp.s</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vfcmps_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfcmp.s</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfcmps_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfcmp.s</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfcmp_vvv(__vr vy, __vr vz)</td><td>pvfcmp</td><td>vx[:] = compare(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_pvfcmp_vsv(unsigned long int sy, __vr vz)</td><td>pvfcmp</td><td>vx[:] = compare(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_pvfcmp_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfcmp</td><td>vx[:] = vm[:] ? compare(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfcmp_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfcmp</td><td>vx[:] = vm[:] ? compare(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td rowspan=24>VFCM</td>
<td>__vr _ve_vfmaxd_vvv(__vr vy, __vr vz)</td><td>vfmax.d</td><td>vx[:] = max(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vfmaxd_vsv(double sy, __vr vz)</td><td>vfmax.d</td><td>vx[:] = max(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vfmaxd_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmax.d</td><td>vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmaxd_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmax.d</td><td>vx[:] = vm[:] ? max(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmaxs_vvv(__vr vy, __vr vz)</td><td>vfmax.s</td><td>vx[:] = max(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vfmaxs_vsv(float sy, __vr vz)</td><td>vfmax.s</td><td>vx[:] = max(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vfmaxs_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmax.s</td><td>vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmaxs_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmax.s</td><td>vx[:] = vm[:] ? max(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmax_vvv(__vr vy, __vr vz)</td><td>pvfmax</td><td>vx[:] = max(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_pvfmax_vsv(unsigned long int sy, __vr vz)</td><td>pvfmax</td><td>vx[:] = max(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_pvfmax_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfmax</td><td>vx[:] = vm[:] ? max(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmax_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfmax</td><td>vx[:] = vm[:] ? max(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmind_vvv(__vr vy, __vr vz)</td><td>vfmin.d</td><td>vx[:] = min(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vfmind_vsv(double sy, __vr vz)</td><td>vfmin.d</td><td>vx[:] = min(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vfmind_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmin.d</td><td>vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmind_vsvmv(double sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmin.d</td><td>vx[:] = vm[:] ? min(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmins_vvv(__vr vy, __vr vz)</td><td>vfmin.s</td><td>vx[:] = min(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_vfmins_vsv(float sy, __vr vz)</td><td>vfmin.s</td><td>vx[:] = min(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_vfmins_vvvmv(__vr vy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmin.s</td><td>vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmins_vsvmv(float sy, __vr vz, __vm256 vm, __vr vd)</td><td>vfmin.s</td><td>vx[:] = vm[:] ? min(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmin_vvv(__vr vy, __vr vz)</td><td>pvfmin</td><td>vx[:] = min(vy[:], vz[:])</td></tr>
<tr>
<td>__vr _ve_pvfmin_vsv(unsigned long int sy, __vr vz)</td><td>pvfmin</td><td>vx[:] = min(sy, vz[:])</td></tr>
<tr>
<td>__vr _ve_pvfmin_vvvMv(__vr vy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfmin</td><td>vx[:] = vm[:] ? min(vy[:], vz[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmin_vsvMv(unsigned long int sy, __vr vz, __vm512 vm, __vr vd)</td><td>pvfmin</td><td>vx[:] = vm[:] ? min(sy, vz[:]) : vd[:]</td></tr>
<tr>
<td rowspan=18>VFMAD</td>
<td>__vr _ve_vfmadd_vvvv(__vr vy, __vr vz, __vr vw)</td><td>vfmad.d</td><td>vx[:] = vz[:] * vw[:] + vy[:]</td></tr>
<tr>
<td>__vr _ve_vfmadd_vsvv(double sy, __vr vz, __vr vw)</td><td>vfmad.d</td><td>vx[:] = vz[:] * vw[:] + sy</td></tr>
<tr>
<td>__vr _ve_vfmadd_vvsv(__vr vy, double sy, __vr vw)</td><td>vfmad.d</td><td>vx[:] = sy * vw[:] + vy[:]</td></tr>
<tr>
<td>__vr _ve_vfmadd_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfmad.d</td><td>vx[:] = vm[:] ? vz[:] * vw[:] + vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmadd_vsvvmv(double sy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfmad.d</td><td>vx[:] = vm[:] ? vz[:] * vw[:] + sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmadd_vvsvmv(__vr vy, double sy, __vr vw, __vm256 vm, __vr vd)</td><td>vfmad.d</td><td>vx[:] = vm[:] ? sy * vw[:] + vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmads_vvvv(__vr vy, __vr vz, __vr vw)</td><td>vfmad.s</td><td>vx[:] = vz[:] * vw[:] + vy[:]</td></tr>
<tr>
<td>__vr _ve_vfmads_vsvv(float sy, __vr vz, __vr vw)</td><td>vfmad.s</td><td>vx[:] = vz[:] * vw[:] + sy</td></tr>
<tr>
<td>__vr _ve_vfmads_vvsv(__vr vy, float sy, __vr vw)</td><td>vfmad.s</td><td>vx[:] = sy * vw[:] + vy[:]</td></tr>
<tr>
<td>__vr _ve_vfmads_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfmad.s</td><td>vx[:] = vm[:] ? vz[:] * vw[:] + vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmads_vsvvmv(float sy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfmad.s</td><td>vx[:] = vm[:] ? vz[:] * vw[:] + sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmads_vvsvmv(__vr vy, float sy, __vr vw, __vm256 vm, __vr vd)</td><td>vfmad.s</td><td>vx[:] = vm[:] ? sy * vw[:] + vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmad_vvvv(__vr vy, __vr vz, __vr vw)</td><td>pvfmad</td><td>vx[:] = vz[:] * vw[:] + vy[:]</td></tr>
<tr>
<td>__vr _ve_pvfmad_vsvv(unsigned long int sy, __vr vz, __vr vw)</td><td>pvfmad</td><td>vx[:] = vz[:] * vw[:] + sy</td></tr>
<tr>
<td>__vr _ve_pvfmad_vvsv(__vr vy, unsigned long int sy, __vr vw)</td><td>pvfmad</td><td>vx[:] = sy * vw[:] + vy[:]</td></tr>
<tr>
<td>__vr _ve_pvfmad_vvvvMv(__vr vy, __vr vz, __vr vw, __vm512 vm, __vr vd)</td><td>pvfmad</td><td>vx[:] = vm[:] ? vz[:] * vw[:] + vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmad_vsvvMv(unsigned long int sy, __vr vz, __vr vw, __vm512 vm, __vr vd)</td><td>pvfmad</td><td>vx[:] = vm[:] ? vz[:] * vw[:] + sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmad_vvsvMv(__vr vy, unsigned long int sy, __vr vw, __vm512 vm, __vr vd)</td><td>pvfmad</td><td>vx[:] = vm[:] ? sy * vw[:] + vy[:] : vd[:]</td></tr>
<tr>
<td rowspan=18>VFMSB</td>
<td>__vr _ve_vfmsbd_vvvv(__vr vy, __vr vz, __vr vw)</td><td>vfmsb.d</td><td>vx[:] = vz[:] * vw[:] - vy[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbd_vsvv(double sy, __vr vz, __vr vw)</td><td>vfmsb.d</td><td>vx[:] = vz[:] * vw[:] - sy</td></tr>
<tr>
<td>__vr _ve_vfmsbd_vvsv(__vr vy, double sy, __vr vw)</td><td>vfmsb.d</td><td>vx[:] = sy * vw[:] - vy[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbd_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfmsb.d</td><td>vx[:] = vm[:] ? vz[:] * vw[:] - vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbd_vsvvmv(double sy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfmsb.d</td><td>vx[:] = vm[:] ? vz[:] * vw[:] - sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbd_vvsvmv(__vr vy, double sy, __vr vw, __vm256 vm, __vr vd)</td><td>vfmsb.d</td><td>vx[:] = vm[:] ? sy * vw[:] - vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbs_vvvv(__vr vy, __vr vz, __vr vw)</td><td>vfmsb.s</td><td>vx[:] = vz[:] * vw[:] - vy[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbs_vsvv(float sy, __vr vz, __vr vw)</td><td>vfmsb.s</td><td>vx[:] = vz[:] * vw[:] - sy</td></tr>
<tr>
<td>__vr _ve_vfmsbs_vvsv(__vr vy, float sy, __vr vw)</td><td>vfmsb.s</td><td>vx[:] = sy * vw[:] - vy[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbs_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfmsb.s</td><td>vx[:] = vm[:] ? vz[:] * vw[:] - vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbs_vsvvmv(float sy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfmsb.s</td><td>vx[:] = vm[:] ? vz[:] * vw[:] - sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfmsbs_vvsvmv(__vr vy, float sy, __vr vw, __vm256 vm, __vr vd)</td><td>vfmsb.s</td><td>vx[:] = vm[:] ? sy * vw[:] - vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmsb_vvvv(__vr vy, __vr vz, __vr vw)</td><td>pvfmsb</td><td>vx[:] = vz[:] * vw[:] - vy[:]</td></tr>
<tr>
<td>__vr _ve_pvfmsb_vsvv(unsigned long int sy, __vr vz, __vr vw)</td><td>pvfmsb</td><td>vx[:] = vz[:] * vw[:] - sy</td></tr>
<tr>
<td>__vr _ve_pvfmsb_vvsv(__vr vy, unsigned long int sy, __vr vw)</td><td>pvfmsb</td><td>vx[:] = sy * vw[:] - vy[:]</td></tr>
<tr>
<td>__vr _ve_pvfmsb_vvvvMv(__vr vy, __vr vz, __vr vw, __vm512 vm, __vr vd)</td><td>pvfmsb</td><td>vx[:] = vm[:] ? vz[:] * vw[:] - vy[:] : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmsb_vsvvMv(unsigned long int sy, __vr vz, __vr vw, __vm512 vm, __vr vd)</td><td>pvfmsb</td><td>vx[:] = vm[:] ? vz[:] * vw[:] - sy : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfmsb_vvsvMv(__vr vy, unsigned long int sy, __vr vw, __vm512 vm, __vr vd)</td><td>pvfmsb</td><td>vx[:] = vm[:] ? sy * vw[:] - vy[:] : vd[:]</td></tr>
<tr>
<td rowspan=18>VFNMAD</td>
<td>__vr _ve_vfnmadd_vvvv(__vr vy, __vr vz, __vr vw)</td><td>vfnmad.d</td><td>vx[:] =  - (vz[:] * vw[:] + vy[:])</td></tr>
<tr>
<td>__vr _ve_vfnmadd_vsvv(double sy, __vr vz, __vr vw)</td><td>vfnmad.d</td><td>vx[:] =  - (vz[:] * vw[:] + sy)</td></tr>
<tr>
<td>__vr _ve_vfnmadd_vvsv(__vr vy, double sy, __vr vw)</td><td>vfnmad.d</td><td>vx[:] =  - (sy * vw[:] + vy[:])</td></tr>
<tr>
<td>__vr _ve_vfnmadd_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmad.d</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] + vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmadd_vsvvmv(double sy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmad.d</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] + sy) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmadd_vvsvmv(__vr vy, double sy, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmad.d</td><td>vx[:] = vm[:] ?  - (sy * vw[:] + vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmads_vvvv(__vr vy, __vr vz, __vr vw)</td><td>vfnmad.s</td><td>vx[:] =  - (vz[:] * vw[:] + vy[:])</td></tr>
<tr>
<td>__vr _ve_vfnmads_vsvv(float sy, __vr vz, __vr vw)</td><td>vfnmad.s</td><td>vx[:] =  - (vz[:] * vw[:] + sy)</td></tr>
<tr>
<td>__vr _ve_vfnmads_vvsv(__vr vy, float sy, __vr vw)</td><td>vfnmad.s</td><td>vx[:] =  - (sy * vw[:] + vy[:])</td></tr>
<tr>
<td>__vr _ve_vfnmads_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmad.s</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] + vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmads_vsvvmv(float sy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmad.s</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] + sy) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmads_vvsvmv(__vr vy, float sy, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmad.s</td><td>vx[:] = vm[:] ?  - (sy * vw[:] + vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfnmad_vvvv(__vr vy, __vr vz, __vr vw)</td><td>pvfnmad</td><td>vx[:] =  - (vz[:] * vw[:] + vy[:])</td></tr>
<tr>
<td>__vr _ve_pvfnmad_vsvv(unsigned long int sy, __vr vz, __vr vw)</td><td>pvfnmad</td><td>vx[:] =  - (vz[:] * vw[:] + sy)</td></tr>
<tr>
<td>__vr _ve_pvfnmad_vvsv(__vr vy, unsigned long int sy, __vr vw)</td><td>pvfnmad</td><td>vx[:] =  - (sy * vw[:] + vy[:])</td></tr>
<tr>
<td>__vr _ve_pvfnmad_vvvvMv(__vr vy, __vr vz, __vr vw, __vm512 vm, __vr vd)</td><td>pvfnmad</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] + vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfnmad_vsvvMv(unsigned long int sy, __vr vz, __vr vw, __vm512 vm, __vr vd)</td><td>pvfnmad</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] + sy) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfnmad_vvsvMv(__vr vy, unsigned long int sy, __vr vw, __vm512 vm, __vr vd)</td><td>pvfnmad</td><td>vx[:] = vm[:] ?  - (sy * vw[:] + vy[:]) : vd[:]</td></tr>
<tr>
<td rowspan=18>VFNMSB</td>
<td>__vr _ve_vfnmsbd_vvvv(__vr vy, __vr vz, __vr vw)</td><td>vfnmsb.d</td><td>vx[:] =  - (vz[:] * vw[:] - vy[:])</td></tr>
<tr>
<td>__vr _ve_vfnmsbd_vsvv(double sy, __vr vz, __vr vw)</td><td>vfnmsb.d</td><td>vx[:] =  - (vz[:] * vw[:] - sy)</td></tr>
<tr>
<td>__vr _ve_vfnmsbd_vvsv(__vr vy, double sy, __vr vw)</td><td>vfnmsb.d</td><td>vx[:] =  - (sy * vw[:] - vy[:])</td></tr>
<tr>
<td>__vr _ve_vfnmsbd_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmsb.d</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] - vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmsbd_vsvvmv(double sy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmsb.d</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] - sy) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmsbd_vvsvmv(__vr vy, double sy, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmsb.d</td><td>vx[:] = vm[:] ?  - (sy * vw[:] - vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmsbs_vvvv(__vr vy, __vr vz, __vr vw)</td><td>vfnmsb.s</td><td>vx[:] =  - (vz[:] * vw[:] - vy[:])</td></tr>
<tr>
<td>__vr _ve_vfnmsbs_vsvv(float sy, __vr vz, __vr vw)</td><td>vfnmsb.s</td><td>vx[:] =  - (vz[:] * vw[:] - sy)</td></tr>
<tr>
<td>__vr _ve_vfnmsbs_vvsv(__vr vy, float sy, __vr vw)</td><td>vfnmsb.s</td><td>vx[:] =  - (sy * vw[:] - vy[:])</td></tr>
<tr>
<td>__vr _ve_vfnmsbs_vvvvmv(__vr vy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmsb.s</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] - vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmsbs_vsvvmv(float sy, __vr vz, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmsb.s</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] - sy) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vfnmsbs_vvsvmv(__vr vy, float sy, __vr vw, __vm256 vm, __vr vd)</td><td>vfnmsb.s</td><td>vx[:] = vm[:] ?  - (sy * vw[:] - vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfnmsb_vvvv(__vr vy, __vr vz, __vr vw)</td><td>pvfnmsb</td><td>vx[:] =  - (vz[:] * vw[:] - vy[:])</td></tr>
<tr>
<td>__vr _ve_pvfnmsb_vsvv(unsigned long int sy, __vr vz, __vr vw)</td><td>pvfnmsb</td><td>vx[:] =  - (vz[:] * vw[:] - sy)</td></tr>
<tr>
<td>__vr _ve_pvfnmsb_vvsv(__vr vy, unsigned long int sy, __vr vw)</td><td>pvfnmsb</td><td>vx[:] =  - (sy * vw[:] - vy[:])</td></tr>
<tr>
<td>__vr _ve_pvfnmsb_vvvvMv(__vr vy, __vr vz, __vr vw, __vm512 vm, __vr vd)</td><td>pvfnmsb</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] - vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfnmsb_vsvvMv(unsigned long int sy, __vr vz, __vr vw, __vm512 vm, __vr vd)</td><td>pvfnmsb</td><td>vx[:] = vm[:] ?  - (vz[:] * vw[:] - sy) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvfnmsb_vvsvMv(__vr vy, unsigned long int sy, __vr vw, __vm512 vm, __vr vd)</td><td>pvfnmsb</td><td>vx[:] = vm[:] ?  - (sy * vw[:] - vy[:]) : vd[:]</td></tr>
<tr>
<td rowspan=3>VRCP</td>
<td>__vr _ve_vrcpd_vv(__vr vy)</td><td>vrcp.d</td><td>vx[:] = 1.0f / vy[:]</td></tr>
<tr>
<td>__vr _ve_vrcps_vv(__vr vy)</td><td>vrcp.s</td><td>vx[:] = 1.0f / vy[:]</td></tr>
<tr>
<td>__vr _ve_pvrcp_vv(__vr vy)</td><td>pvrcp</td><td>vx[:] = 1.0f / vy[:]</td></tr>
<tr>
<td rowspan=3>VRSQRT</td>
<td>__vr _ve_vrsqrtd_vv(__vr vy)</td><td>vrsqrt.d</td><td>vx[:] = 1.0f / std::sqrt(vy[:])</td></tr>
<tr>
<td>__vr _ve_vrsqrts_vv(__vr vy)</td><td>vrsqrt.s</td><td>vx[:] = 1.0f / std::sqrt(vy[:])</td></tr>
<tr>
<td>__vr _ve_pvrsqrt_vv(__vr vy)</td><td>pvrsqrt</td><td>vx[:] = 1.0f / std::sqrt(vy[:])</td></tr>
<tr>
<td rowspan=1>VRSQRTnex</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=20>VFIX</td>
<td>__vr _ve_vcvtwdsx_vv(__vr vy)</td><td>vcvt.w.d.sx</td><td>vx[:] = (int)(vy[:]+0.5)</td></tr>
<tr>
<td>__vr _ve_vcvtwdsx_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.w.d.sx</td><td>vx[:] = vm[:] ? (int)(vy[:]+0.5) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcvtwdsxrz_vv(__vr vy)</td><td>vcvt.w.d.sx.rz</td><td>vx[:] = (int)(vy[:])</td></tr>
<tr>
<td>__vr _ve_vcvtwdsxrz_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.w.d.sx.rz</td><td>vx[:] = vm[:] ? (int)(vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcvtwdzx_vv(__vr vy)</td><td>vcvt.w.d.zx</td><td>vx[:] = (unsigned int)(vy[:]+0.5)</td></tr>
<tr>
<td>__vr _ve_vcvtwdzx_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.w.d.zx</td><td>vx[:] = vm[:] ? (unsigned int)(vy[:]+0.5) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcvtwdzxrz_vv(__vr vy)</td><td>vcvt.w.d.zx.rz</td><td>vx[:] = (unsigned int)(vy[:])</td></tr>
<tr>
<td>__vr _ve_vcvtwdzxrz_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.w.d.zx.rz</td><td>vx[:] = vm[:] ? (unsigned int)(vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcvtwssx_vv(__vr vy)</td><td>vcvt.w.s.sx</td><td>vx[:] = (int)(vy[:]+0.5)</td></tr>
<tr>
<td>__vr _ve_vcvtwssx_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.w.s.sx</td><td>vx[:] = vm[:] ? (int)(vy[:]+0.5) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcvtwssxrz_vv(__vr vy)</td><td>vcvt.w.s.sx.rz</td><td>vx[:] = (int)(vy[:])</td></tr>
<tr>
<td>__vr _ve_vcvtwssxrz_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.w.s.sx.rz</td><td>vx[:] = vm[:] ? (int)(vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcvtwszx_vv(__vr vy)</td><td>vcvt.w.s.zx</td><td>vx[:] = (unsigned int)(vy[:]+0.5)</td></tr>
<tr>
<td>__vr _ve_vcvtwszx_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.w.s.zx</td><td>vx[:] = vm[:] ? (unsigned int)(vy[:]+0.5) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcvtwszxrz_vv(__vr vy)</td><td>vcvt.w.s.zx.rz</td><td>vx[:] = (unsigned int)(vy[:])</td></tr>
<tr>
<td>__vr _ve_vcvtwszxrz_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.w.s.zx.rz</td><td>vx[:] = vm[:] ? (unsigned int)(vy[:]) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvcvtws_vv(__vr vy)</td><td>pvcvt.w.s</td><td>vx[:] = (int)(vy[:]+0.5)</td></tr>
<tr>
<td>__vr _ve_pvcvtws_vvMv(__vr vy, __vm512 vm, __vr vd)</td><td>pvcvt.w.s</td><td>vx[:] = vm[:] ? (int)(vy[:]+0.5) : vd[:]</td></tr>
<tr>
<td>__vr _ve_pvcvtwsrz_vv(__vr vy)</td><td>pvcvt.w.s.rz</td><td>vx[:] = (int)(vy[:])</td></tr>
<tr>
<td>__vr _ve_pvcvtwsrz_vvMv(__vr vy, __vm512 vm, __vr vd)</td><td>pvcvt.w.s.rz</td><td>vx[:] = vm[:] ? (int)(vy[:]) : vd[:]</td></tr>
<tr>
<td rowspan=4>VFIXX</td>
<td>__vr _ve_vcvtld_vv(__vr vy)</td><td>vcvt.l.d</td><td>vx[:] = (long long)(vy[:]+0.5)</td></tr>
<tr>
<td>__vr _ve_vcvtld_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.l.d</td><td>vx[:] = vm[:] ? (long long)(vy[:]+0.5) : vd[:]</td></tr>
<tr>
<td>__vr _ve_vcvtldrz_vv(__vr vy)</td><td>vcvt.l.d.rz</td><td>vx[:] = (long long)(vy[:])</td></tr>
<tr>
<td>__vr _ve_vcvtldrz_vvmv(__vr vy, __vm256 vm, __vr vd)</td><td>vcvt.l.d.rz</td><td>vx[:] = vm[:] ? (long long)(vy[:]) : vd[:]</td></tr>
<tr>
<td rowspan=3>VFLT</td>
<td>__vr _ve_vcvtdw_vv(__vr vy)</td><td>vcvt.d.w</td><td>vx[:] = (double)vy[:]</td></tr>
<tr>
<td>__vr _ve_vcvtsw_vv(__vr vy)</td><td>vcvt.s.w</td><td>vx[:] = (float)vy[:]</td></tr>
<tr>
<td>__vr _ve_pvcvtsw_vv(__vr vy)</td><td>pvcvt.s.w</td><td>vx[:] = (float)vy[:]</td></tr>
<tr>
<td rowspan=1>VFLTX</td>
<td>__vr _ve_vcvtdl_vv(__vr vy)</td><td>vcvt.d.l</td><td>vx[:] = (double)vy[:]</td></tr>
<tr>
<td rowspan=1>VCVD</td>
<td>__vr _ve_vcvtds_vv(__vr vy)</td><td>vcvt.d.s</td><td>vx[:] = (double)vy[:]</td></tr>
<tr>
<td rowspan=1>VCVS</td>
<td>__vr _ve_vcvtsd_vv(__vr vy)</td><td>vcvt.s.d</td><td>vx[:] = (float)vy[:]</td></tr>
</table>
<h3><a name="sec5">5.3.2.12. Vector Mask Arithmetic Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=2>VMRG</td>
<td>__vr _ve_vmrg_vvvm(__vr vy, __vr vz, __vm256 vm)</td><td>vmrg</td><td></td></tr>
<tr>
<td>__vr _ve_vmrgw_vvvM(__vr vy, __vr vz, __vm512 vm)</td><td>vmrg.w</td><td></td></tr>
<tr>
<td rowspan=2>VSHF</td>
<td>__vr _ve_vshf_vvvs(__vr vy, __vr vz, unsigned long int sy)</td><td>vshf</td><td></td></tr>
<tr>
<td>__vr _ve_vshf_vvvs(__vr vy, __vr vz, unsigned long int N)</td><td>vshf</td><td></td></tr>
<tr>
<td rowspan=1>VCP</td>
<td>__vr _ve_vcp_vvmv(__vr vz, __vm256 vm, __vr vd)</td><td>vcp</td><td></td></tr>
<tr>
<td rowspan=1>VEX</td>
<td>__vr _ve_vex_vvmv(__vr vz, __vm256 vm, __vr vd)</td><td>vex</td><td></td></tr>
<tr>
<td rowspan=6>VFMK</td>
<td>__vm256 _ve_vfmkl_mcv(int cc, __vr vz)</td><td>vfmk.l</td><td></td></tr>
<tr>
<td>__vm256 _ve_vfmkl_mcvm(int cc, __vr vz, __vm256 vm)</td><td>vfmk.l</td><td></td></tr>
<tr>
<td>__vm256 _ve_vfmkat_m()</td><td>vfmk.at</td><td></td></tr>
<tr>
<td>__vm256 _ve_vfmkaf_m()</td><td>vfmk.af</td><td></td></tr>
<tr>
<td>__vm512 _ve_pvfmkat_M()</td><td></td><td></td></tr>
<tr>
<td>__vm512 _ve_pvfmkaf_M()</td><td></td><td></td></tr>
<tr>
<td rowspan=4>VFMS</td>
<td>__vm256 _ve_vfmkw_mcv(int cc, __vr vz)</td><td>vfmk.w</td><td></td></tr>
<tr>
<td>__vm256 _ve_vfmkw_mcvm(int cc, __vr vz, __vm256 vm)</td><td>vfmk.w</td><td></td></tr>
<tr>
<td>__vm512 _ve_pvfmkw_Mcv(int cc, __vr vz)</td><td></td><td></td></tr>
<tr>
<td>__vm512 _ve_pvfmkw_McvM(int cc, __vr vz, __vm512 vm)</td><td></td><td></td></tr>
<tr>
<td rowspan=6>VFMF</td>
<td>__vm256 _ve_vfmkd_mcv(int cc, __vr vz)</td><td>vfmk.d</td><td></td></tr>
<tr>
<td>__vm256 _ve_vfmkd_mcvm(int cc, __vr vz, __vm256 vm)</td><td>vfmk.d</td><td></td></tr>
<tr>
<td>__vm256 _ve_vfmks_mcv(int cc, __vr vz)</td><td>vfmk.s</td><td></td></tr>
<tr>
<td>__vm256 _ve_vfmks_mcvm(int cc, __vr vz, __vm256 vm)</td><td>vfmk.s</td><td></td></tr>
<tr>
<td>__vm512 _ve_pvfmks_Mcv(int cc, __vr vz)</td><td></td><td></td></tr>
<tr>
<td>__vm512 _ve_pvfmks_McvM(int cc, __vr vz, __vm512 vm)</td><td></td><td></td></tr>
</table>
<h3><a name="sec6">5.3.2.13. Vector Recursive Relation Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=4>VSUMS</td>
<td>__vr _ve_vsumwsx_vv(__vr vy)</td><td>vsum.w.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vsumwsx_vvm(__vr vy, __vm256 vm)</td><td>vsum.w.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vsumwzx_vv(__vr vy)</td><td>vsum.w.zx</td><td></td></tr>
<tr>
<td>__vr _ve_vsumwzx_vvm(__vr vy, __vm256 vm)</td><td>vsum.w.zx</td><td></td></tr>
<tr>
<td rowspan=2>VSUMX</td>
<td>__vr _ve_vsuml_vv(__vr vy)</td><td>vsum.l</td><td></td></tr>
<tr>
<td>__vr _ve_vsuml_vvm(__vr vy, __vm256 vm)</td><td>vsum.l</td><td></td></tr>
<tr>
<td rowspan=4>VFSUM</td>
<td>__vr _ve_vfsumd_vv(__vr vy)</td><td>vfsum.d</td><td></td></tr>
<tr>
<td>__vr _ve_vfsumd_vvm(__vr vy, __vm256 vm)</td><td>vfsum.d</td><td></td></tr>
<tr>
<td>__vr _ve_vfsums_vv(__vr vy)</td><td>vfsum.s</td><td></td></tr>
<tr>
<td>__vr _ve_vfsums_vvm(__vr vy, __vm256 vm)</td><td>vfsum.s</td><td></td></tr>
<tr>
<td rowspan=8>VMAXS</td>
<td>__vr _ve_vrmaxswfstsx_vv(__vr vy)</td><td>vrmaxs.w.fst.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vrmaxswlstsx_vv(__vr vy)</td><td>vrmaxs.w.lst.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vrmaxswfstzx_vv(__vr vy)</td><td>vrmaxs.w.fst.zx</td><td></td></tr>
<tr>
<td>__vr _ve_vrmaxswlstzx_vv(__vr vy)</td><td>vrmaxs.w.lst.zx</td><td></td></tr>
<tr>
<td>__vr _ve_vrminswfstsx_vv(__vr vy)</td><td>vrmins.w.fst.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vrminswlstsx_vv(__vr vy)</td><td>vrmins.w.lst.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vrminswfstzx_vv(__vr vy)</td><td>vrmins.w.fst.zx</td><td></td></tr>
<tr>
<td>__vr _ve_vrminswlstzx_vv(__vr vy)</td><td>vrmins.w.lst.zx</td><td></td></tr>
<tr>
<td rowspan=4>VMAXX</td>
<td>__vr _ve_vrmaxslfst_vv(__vr vy)</td><td>vrmaxs.l.fst</td><td></td></tr>
<tr>
<td>__vr _ve_vrmaxsllst_vv(__vr vy)</td><td>vrmaxs.l.lst</td><td></td></tr>
<tr>
<td>__vr _ve_vrminslfst_vv(__vr vy)</td><td>vrmins.l.fst</td><td></td></tr>
<tr>
<td>__vr _ve_vrminsllst_vv(__vr vy)</td><td>vrmins.l.lst</td><td></td></tr>
<tr>
<td rowspan=8>VFMAX</td>
<td>__vr _ve_vfrmaxdfst_vv(__vr vy)</td><td>vfrmax.d.fst</td><td></td></tr>
<tr>
<td>__vr _ve_vfrmaxdlst_vv(__vr vy)</td><td>vfrmax.d.lst</td><td></td></tr>
<tr>
<td>__vr _ve_vfrmaxsfst_vv(__vr vy)</td><td>vfrmax.s.fst</td><td></td></tr>
<tr>
<td>__vr _ve_vfrmaxslst_vv(__vr vy)</td><td>vfrmax.s.lst</td><td></td></tr>
<tr>
<td>__vr _ve_vfrmindfst_vv(__vr vy)</td><td>vfrmin.d.fst</td><td></td></tr>
<tr>
<td>__vr _ve_vfrmindlst_vv(__vr vy)</td><td>vfrmin.d.lst</td><td></td></tr>
<tr>
<td>__vr _ve_vfrminsfst_vv(__vr vy)</td><td>vfrmin.s.fst</td><td></td></tr>
<tr>
<td>__vr _ve_vfrminslst_vv(__vr vy)</td><td>vfrmin.s.lst</td><td></td></tr>
<tr>
<td rowspan=1>VRAND</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VROR</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VRXOR</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VFIA</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VFIS</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VFIM</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VFIAM</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VFISM</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VFIMA</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>VFIMS</td>
<td>not yet implemented</td><td></td><td></td></tr>
</table>
<h3><a name="sec7">5.3.2.14. Vector Gathering/Scattering Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=2>VGT</td>
<td>__vr _ve_vgt_vv(__vr vy)</td><td>vgt</td><td></td></tr>
<tr>
<td>__vr _ve_vgt_vvm(__vr vy, __vm256 vm)</td><td>vgt</td><td></td></tr>
<tr>
<td rowspan=2>VGTU</td>
<td>__vr _ve_vgtu_vv(__vr vy)</td><td>vgtu</td><td></td></tr>
<tr>
<td>__vr _ve_vgtu_vvm(__vr vy, __vm256 vm)</td><td>vgtu</td><td></td></tr>
<tr>
<td rowspan=4>VGTL</td>
<td>__vr _ve_vgtlsx_vv(__vr vy)</td><td>vgtl.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vgtlsx_vvm(__vr vy, __vm256 vm)</td><td>vgtl.sx</td><td></td></tr>
<tr>
<td>__vr _ve_vgtlzx_vv(__vr vy)</td><td>vgtl.zx</td><td></td></tr>
<tr>
<td>__vr _ve_vgtlzx_vvm(__vr vy, __vm256 vm)</td><td>vgtl.zx</td><td></td></tr>
<tr>
<td rowspan=4>VSC</td>
<td>void _ve_vsc_vv(__vr vx, __vr vy)</td><td>vsc</td><td></td></tr>
<tr>
<td>void _ve_vsc_vvm(__vr vx, __vr vy, __vm256 vm)</td><td>vsc</td><td></td></tr>
<tr>
<td>void _ve_vscot_vv(__vr vx, __vr vy)</td><td>vsc.ot</td><td></td></tr>
<tr>
<td>void _ve_vscot_vvm(__vr vx, __vr vy, __vm256 vm)</td><td>vsc.ot</td><td></td></tr>
<tr>
<td rowspan=4>VSCU</td>
<td>void _ve_vscu_vv(__vr vx, __vr vy)</td><td>vscu</td><td></td></tr>
<tr>
<td>void _ve_vscu_vvm(__vr vx, __vr vy, __vm256 vm)</td><td>vscu</td><td></td></tr>
<tr>
<td>void _ve_vscuot_vv(__vr vx, __vr vy)</td><td>vscu.ot</td><td></td></tr>
<tr>
<td>void _ve_vscuot_vvm(__vr vx, __vr vy, __vm256 vm)</td><td>vscu.ot</td><td></td></tr>
<tr>
<td rowspan=4>VSCL</td>
<td>void _ve_vscl_vv(__vr vx, __vr vy)</td><td>vscl</td><td></td></tr>
<tr>
<td>void _ve_vscl_vvm(__vr vx, __vr vy, __vm256 vm)</td><td>vscl</td><td></td></tr>
<tr>
<td>void _ve_vsclot_vv(__vr vx, __vr vy)</td><td>vscl.ot</td><td></td></tr>
<tr>
<td>void _ve_vsclot_vvm(__vr vx, __vr vy, __vm256 vm)</td><td>vscl.ot</td><td></td></tr>
</table>
<h3><a name="sec8">5.3.2.15. Vector Mask Register Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=2>ANDM</td>
<td>__vm256 _ve_andm_mmm(__vm256 vmy, __vm256 vmz)</td><td>andm</td><td>vmx[:] = vmy[:] ? vmy[:] & vmz[:] : vmz[:]</td></tr>
<tr>
<td>__vm512 _ve_andm_MMM(__vm512 vmy, __vm512 vmz)</td><td>andm</td><td>vmx[:] = vmy[:] ? vmy[:] & vmz[:] : vmz[:]</td></tr>
<tr>
<td rowspan=2>ORM</td>
<td>__vm256 _ve_orm_mmm(__vm256 vmy, __vm256 vmz)</td><td>orm</td><td>vmx[:] = vmy[:] ? vmy[:] | vmz[:] : vmz[:]</td></tr>
<tr>
<td>__vm512 _ve_orm_MMM(__vm512 vmy, __vm512 vmz)</td><td>orm</td><td>vmx[:] = vmy[:] ? vmy[:] | vmz[:] : vmz[:]</td></tr>
<tr>
<td rowspan=2>XORM</td>
<td>__vm256 _ve_xorm_mmm(__vm256 vmy, __vm256 vmz)</td><td>xorm</td><td>vmx[:] = vmy[:] ? vmy[:] ^ vmz[:] : vmz[:]</td></tr>
<tr>
<td>__vm512 _ve_xorm_MMM(__vm512 vmy, __vm512 vmz)</td><td>xorm</td><td>vmx[:] = vmy[:] ? vmy[:] ^ vmz[:] : vmz[:]</td></tr>
<tr>
<td rowspan=2>EQVM</td>
<td>__vm256 _ve_eqvm_mmm(__vm256 vmy, __vm256 vmz)</td><td>eqvm</td><td>vmx[:] = vmy[:] ? ~(vmy[:] ^ vmz[:]) : vmz[:]</td></tr>
<tr>
<td>__vm512 _ve_eqvm_MMM(__vm512 vmy, __vm512 vmz)</td><td>eqvm</td><td>vmx[:] = vmy[:] ? ~(vmy[:] ^ vmz[:]) : vmz[:]</td></tr>
<tr>
<td rowspan=2>NNDM</td>
<td>__vm256 _ve_nndm_mmm(__vm256 vmy, __vm256 vmz)</td><td>nndm</td><td>vmx[:] = vmy[:] ? (~vmy[:]) & vmz[:] : vmz[:]</td></tr>
<tr>
<td>__vm512 _ve_nndm_MMM(__vm512 vmy, __vm512 vmz)</td><td>nndm</td><td>vmx[:] = vmy[:] ? (~vmy[:]) & vmz[:] : vmz[:]</td></tr>
<tr>
<td rowspan=2>NEGM</td>
<td>__vm256 _ve_negm_mm(__vm256 vmy)</td><td>negm</td><td>vmx[:] = vmx[:] ? ~vmy[:] : vmy[:]</td></tr>
<tr>
<td>__vm512 _ve_negm_MM(__vm512 vmy)</td><td>negm</td><td>vmx[:] = vmx[:] ? ~vmy[:] : vmy[:]</td></tr>
<tr>
<td rowspan=1>PCVM</td>
<td>unsigned long int _ve_pcvm_sm(__vm256 vmy)</td><td>pcvm</td><td></td></tr>
<tr>
<td rowspan=1>LZVM</td>
<td>unsigned long int _ve_lzvm_sm(__vm256 vmy)</td><td>lzvm</td><td></td></tr>
<tr>
<td rowspan=1>TOVM</td>
<td>unsigned long int _ve_tovm_sm(__vm256 vmy)</td><td>tovm</td><td></td></tr>
</table>
<h3><a name="sec9">5.3.2.16. Vector Control Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=1>LVL</td>
<td>void _ve_lvl(int vl)</td><td>lvl</td><td></td></tr>
<tr>
<td rowspan=1>SVL</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>SMVL</td>
<td>not yet implemented</td><td></td><td></td></tr>
<tr>
<td rowspan=1>LVIX</td>
<td>not yet implemented</td><td></td><td></td></tr>
</table>
<h3><a name="sec10">5.3.2.17. Control Instructions</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=1>SVOB</td>
<td>void _ve_svob(void)</td><td>svob</td><td></td></tr>
</table>
<h3><a name="sec11">Others</a></h3>
<table border=1>
<tr><th>Instruction</th><th>Function</th><th>asm</th><th>Description</th></tr>
<tr>
<td rowspan=9></td>
<td>unsigned long int _ve_pack_f32p(float const* p0, float const* p1)</td><td>ldu,ldl,or</td><td></td></tr>
<tr>
<td>unsigned long int _ve_pack_f32a(float const* p)</td><td>load and mul</td><td></td></tr>
<tr>
<td>unsigned long int _ve_pack_i32(int a, int b)</td><td>sll,add,or</td><td></td></tr>
<tr>
<td>__vr _ve_vec_expf_vv(__vr vy)</td><td></td><td>vx[:] = expf(vy[:])</td></tr>
<tr>
<td>__vr _ve_vec_exp_vv(__vr vy)</td><td></td><td>vx[:] = exp(vy[:])</td></tr>
<tr>
<td>__vm _ve_extract_vm512u(__vm512 vm)</td><td></td><td></td></tr>
<tr>
<td>__vm _ve_extract_vm512l(__vm512 vm)</td><td></td><td></td></tr>
<tr>
<td>__vm512 _ve_insert_vm512u(__vm512 vmx, __vm vmy)</td><td></td><td></td></tr>
<tr>
<td>__vm512 _ve_insert_vm512l(__vm512 vmx, __vm vmy)</td><td></td><td></td></tr>
</table>
