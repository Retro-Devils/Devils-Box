#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="openjk_ja"
rp_module_desc="openjk_ja - OpenJK: JediAcademy (SP + MP)"
rp_module_licence="GPL2 https://raw.githubusercontent.com/JACoders/OpenJK/master/LICENSE.txt"
rp_module_help="Copy assets0.pk3, assets1.pk3, assets2.pk3, and assets3.pk3 into $romdir/ports/jediacademy/"
rp_module_section="exp"
rp_module_flags=""

function _arch_openjk_ja() {
    # exact parsing from Makefile
    echo "$(uname -m | sed -e 's/i.86/x86/' | sed -e 's/^arm.*/arm/')"
}

function depends_openjk_ja() {
    getDepends build-essential cmake libjpeg-dev libpng-dev zlib1g-dev libsdl2-dev

}

function sources_openjk_ja() {
    gitPullOrClone "$md_build" https://github.com/JACoders/OpenJK.git
}

function build_openjk_ja() {
    mkdir "$md_build/build"
    cd "$md_build/build"
    cmake -DCMAKE_INSTALL_PREFIX="$md_inst" ..
    make clean
    make

    md_ret_require=(
        "$md_build/build/openjkded.$(_arch_openjk_ja)"
        "$md_build/build/openjk_sp.$(_arch_openjk_ja)"
        "$md_build/build/openjk.$(_arch_openjk_ja)"
        "$md_build/build/code/game/jagame$(_arch_openjk_ja).so"
        "$md_build/build/code/rd-vanilla/rdsp-vanilla_$(_arch_openjk_ja).so"
        "$md_build/build/codemp/game/jampgame$(_arch_openjk_ja).so"
        "$md_build/build/codemp/cgame/cgame$(_arch_openjk_ja).so"
        "$md_build/build/codemp/ui/ui$(_arch_openjk_ja).so"
        "$md_build/build/codemp/rd-vanilla/rd-vanilla_$(_arch_openjk_ja).so"
    )
}

function install_openjk_ja() {
    md_ret_files=(
        "build/openjkded.$(_arch_openjk_ja)"
        "build/openjk_sp.$(_arch_openjk_ja)"
        "build/openjk.$(_arch_openjk_ja)"
        "build/code/game/jagame$(_arch_openjk_ja).so"
        "build/code/rd-vanilla/rdsp-vanilla_$(_arch_openjk_ja).so"
        "build/codemp/game/jampgame$(_arch_openjk_ja).so"
        "build/codemp/cgame/cgame$(_arch_openjk_ja).so"
        "build/codemp/ui/ui$(_arch_openjk_ja).so"
        "build/codemp/rd-vanilla/rd-vanilla_$(_arch_openjk_ja).so"
    )
}

function game_data_openjk_ja() {
    for lib in ui cgame jagame jampgame
    do
        cp "${md_inst}/${lib}$(_arch_openjk_ja).so" "${romdir}/ports/jediacademy/${lib}$(_arch_openjk_ja).so"
    done
}

function configure_openjk_ja() {
    local launcher_sp=("${md_inst}/openjk_sp.$(_arch_openjk_ja)")
    local launcher_mp=("${md_inst}/openjk.$(_arch_openjk_ja)")

    addPort "${md_id}" "jediacademy_sp" "Star Wars - Jedi Knight - Jedi Academy (SP)" "${launcher_sp[*]}"
    addPort "${md_id}" "jediacademy_mp" "Star Wars - Jedi Knight - Jedi Academy (MP)" "${launcher_mp[*]}"

    mkRomDir "ports/jediacademy"

    moveConfigDir "${md_inst}/base" "$romdir/ports/jediacademy"
    moveConfigDir "$home/.local/share/openjk" "${md_conf_root}/jediacademy/openjk" 

    [[ "$md_mode" == "install" ]] && game_data_openjk_ja
}
