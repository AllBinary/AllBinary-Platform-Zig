// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
//  
// By agreeing to this license you and any business entity you represent are 
// legally bound to the AllBinary Open License Version 1 legal agreement. 
//  
// You may obtain the AllBinary Open License Version 1 legal agreement from 
// AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
//  
// Created By: Travis Berthelot 
//   
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const CommonDataFileStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.CommonDataFileStrings";
    XML: ?*String = null,
    _XML: ?*String = null,
    JSON: ?*String = null,
    _JSON: ?*String = null,
    XSL: ?*String = null,
    _XSL: ?*String = null,
    JAVA: ?*String = null,
    _JAVA: ?*String = null,
    KT: ?*String = null,
    _KT: ?*String = null,
    TS: ?*String = null,
    _TS: ?*String = null,
    JS: ?*String = null,
    _JS: ?*String = null,
    CPP: ?*String = null,
    _CPP: ?*String = null,
    H: ?*String = null,
    _H: ?*String = null,
    PY: ?*String = null,
    _PY: ?*String = null,
    GO: ?*String = null,
    _GO: ?*String = null,
    CS: ?*String = null,
    _CS: ?*String = null,
    ADB: ?*String = null,
    _ADB: ?*String = null,
    ADS: ?*String = null,
    _ADS: ?*String = null,
    ADA: ?*String = null,
    _ADA: ?*String = null,
    RUST: ?*String = null,
    _RUST: ?*String = null,
    C: ?*String = null,
    _C: ?*String = null,
    CSHARP: ?*String = null,
    _CSHARP: ?*String = null,
    ERL: ?*String = null,
    _ERL: ?*String = null,
    HS: ?*String = null,
    _HS: ?*String = null,
    HX: ?*String = null,
    _HX: ?*String = null,
    LUA: ?*String = null,
    _LUA: ?*String = null,
    PAS: ?*String = null,
    _PAS: ?*String = null,
    ML: ?*String = null,
    _ML: ?*String = null,
    PL: ?*String = null,
    _PL: ?*String = null,
    RB: ?*String = null,
    _RB: ?*String = null,
    ZIG: ?*String = null,
    _ZIG: ?*String = null,
    PM: ?*String = null,
    _PM: ?*String = null,
    KTS: ?*String = null,
    _KTS: ?*String = null,
    CBL: ?*String = null,
    _CBL: ?*String = null,
    COB: ?*String = null,
    _COB: ?*String = null,
    F90: ?*String = null,
    _F90: ?*String = null,
    F: ?*String = null,
    _F: ?*String = null,
    DART: ?*String = null,
    _DART: ?*String = null,
    EX: ?*String = null,
    _EX: ?*String = null,
    EXS: ?*String = null,
    _EXS: ?*String = null,
    KOTLIN: ?*String = null,
    TYPESCRIPT: ?*String = null,
    JAVASCRIPT: ?*String = null,
    C_PLUS_PLUS: ?*String = null,
    PYTHON: ?*String = null,
    C_SHARP: ?*String = null,
    RUST_NAME: ?*String = null,
    RUBY: ?*String = null,
    PERL: ?*String = null,
    OBJECT_PASCAL: ?*String = null,
    OCAML: ?*String = null,
    HASKELL: ?*String = null,
    HAXE: ?*String = null,
    ERLANG: ?*String = null,
    COBOL: ?*String = null,
    FORTRAN: ?*String = null,
    ELIXIR: ?*String = null,
    CPLUSPLUS: ?*String = null,
    GOLANG: ?*String = null,
    CSHARP_ALIAS: ?*String = null,
    C23: ?*String = null,
    PASCAL: ?*String = null,
    OBJECT_PASCAL_ALIAS: ?*String = null,
    KT_SHORT_NAME: ?*String = null,
    TS_SHORT_NAME: ?*String = null,
    JS_SHORT_NAME: ?*String = null,
    CPP_SHORT_NAME: ?*String = null,
    PY_SHORT_NAME: ?*String = null,
    GO_SHORT_NAME: ?*String = null,
    CS_SHORT_NAME: ?*String = null,
    ADA_SHORT_NAME: ?*String = null,
    RUST_SHORT_NAME: ?*String = null,
    LUA_SHORT_NAME: ?*String = null,
    C_SHORT_NAME: ?*String = null,
    ZIG_SHORT_NAME: ?*String = null,
    RB_SHORT_NAME: ?*String = null,
    PL_SHORT_NAME: ?*String = null,
    PAS_SHORT_NAME: ?*String = null,
    ML_SHORT_NAME: ?*String = null,
    HS_SHORT_NAME: ?*String = null,
    HX_SHORT_NAME: ?*String = null,
    ERL_SHORT_NAME: ?*String = null,
    CBL_SHORT_NAME: ?*String = null,
    F90_SHORT_NAME: ?*String = null,
    DART_SHORT_NAME: ?*String = null,
    EX_SHORT_NAME: ?*String = null,
    UNCRYPTED_EXTENSION: ?*String = null,
    ENCRYPTED_EXTENSION: ?*String = null,
    var instance: ?*CommonDataFileStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CommonDataFileStrings.create();
    }

    fn initFields(this: *Self) void {
        this.XML = String.literal("xml");
        this._XML = String.literal(".xml");
        this.JSON = String.literal("json");
        this._JSON = String.literal(".json");
        this.XSL = String.literal("xsl");
        this._XSL = String.literal(".xsl");
        this.JAVA = String.literal("java");
        this._JAVA = String.literal(".java");
        this.KT = String.literal("kt");
        this._KT = String.literal(".kt");
        this.TS = String.literal("ts");
        this._TS = String.literal(".ts");
        this.JS = String.literal("js");
        this._JS = String.literal(".js");
        this.CPP = String.literal("cpp");
        this._CPP = String.literal(".cpp");
        this.H = String.literal("h");
        this._H = String.literal(".h");
        this.PY = String.literal("py");
        this._PY = String.literal(".py");
        this.GO = String.literal("go");
        this._GO = String.literal(".go");
        this.CS = String.literal("cs");
        this._CS = String.literal(".cs");
        this.ADB = String.literal("adb");
        this._ADB = String.literal(".adb");
        this.ADS = String.literal("ads");
        this._ADS = String.literal(".ads");
        this.ADA = String.literal("ada");
        this._ADA = String.literal(".ada");
        this.RUST = String.literal("rs");
        this._RUST = String.literal(".rs");
        this.C = String.literal("c");
        this._C = String.literal(".c");
        this.CSHARP = String.literal("cs");
        this._CSHARP = String.literal(".cs");
        this.ERL = String.literal("erl");
        this._ERL = String.literal(".erl");
        this.HS = String.literal("hs");
        this._HS = String.literal(".hs");
        this.HX = String.literal("hx");
        this._HX = String.literal(".hx");
        this.LUA = String.literal("lua");
        this._LUA = String.literal(".lua");
        this.PAS = String.literal("pas");
        this._PAS = String.literal(".pas");
        this.ML = String.literal("ml");
        this._ML = String.literal(".ml");
        this.PL = String.literal("pl");
        this._PL = String.literal(".pl");
        this.RB = String.literal("rb");
        this._RB = String.literal(".rb");
        this.ZIG = String.literal("zig");
        this._ZIG = String.literal(".zig");
        this.PM = String.literal("pm");
        this._PM = String.literal(".pm");
        this.KTS = String.literal("kts");
        this._KTS = String.literal(".kts");
        this.CBL = String.literal("cbl");
        this._CBL = String.literal(".cbl");
        this.COB = String.literal("cob");
        this._COB = String.literal(".cob");
        this.F90 = String.literal("f90");
        this._F90 = String.literal(".f90");
        this.F = String.literal("f");
        this._F = String.literal(".f");
        this.DART = String.literal("dart");
        this._DART = String.literal(".dart");
        this.EX = String.literal("ex");
        this._EX = String.literal(".ex");
        this.EXS = String.literal("exs");
        this._EXS = String.literal(".exs");
        this.KOTLIN = String.literal("kotlin");
        this.TYPESCRIPT = String.literal("typescript");
        this.JAVASCRIPT = String.literal("javascript");
        this.C_PLUS_PLUS = String.literal("c++");
        this.PYTHON = String.literal("python");
        this.C_SHARP = String.literal("c#");
        this.RUST_NAME = String.literal("rust");
        this.RUBY = String.literal("ruby");
        this.PERL = String.literal("perl");
        this.OBJECT_PASCAL = String.literal("objectpascal");
        this.OCAML = String.literal("ocaml");
        this.HASKELL = String.literal("haskell");
        this.HAXE = String.literal("haxe");
        this.ERLANG = String.literal("erlang");
        this.COBOL = String.literal("cobol");
        this.FORTRAN = String.literal("fortran");
        this.ELIXIR = String.literal("elixir");
        this.CPLUSPLUS = String.literal("cplusplus");
        this.GOLANG = String.literal("golang");
        this.CSHARP_ALIAS = String.literal("csharp");
        this.C23 = String.literal("c23");
        this.PASCAL = String.literal("pascal");
        this.OBJECT_PASCAL_ALIAS = String.literal("object pascal");
        this.KT_SHORT_NAME = String.literal("Kt");
        this.TS_SHORT_NAME = String.literal("Ts");
        this.JS_SHORT_NAME = String.literal("Js");
        this.CPP_SHORT_NAME = String.literal("Cpp");
        this.PY_SHORT_NAME = String.literal("Py");
        this.GO_SHORT_NAME = String.literal("Go");
        this.CS_SHORT_NAME = String.literal("Cs");
        this.ADA_SHORT_NAME = String.literal("Ada");
        this.RUST_SHORT_NAME = String.literal("Rust");
        this.LUA_SHORT_NAME = String.literal("Lua");
        this.C_SHORT_NAME = String.literal("C");
        this.ZIG_SHORT_NAME = String.literal("Zig");
        this.RB_SHORT_NAME = String.literal("Rb");
        this.PL_SHORT_NAME = String.literal("Pl");
        this.PAS_SHORT_NAME = String.literal("Pas");
        this.ML_SHORT_NAME = String.literal("Ml");
        this.HS_SHORT_NAME = String.literal("Hs");
        this.HX_SHORT_NAME = String.literal("Hx");
        this.ERL_SHORT_NAME = String.literal("Erl");
        this.CBL_SHORT_NAME = String.literal("Cbl");
        this.F90_SHORT_NAME = String.literal("F90");
        this.DART_SHORT_NAME = String.literal("Dart");
        this.EX_SHORT_NAME = String.literal("Ex");
        this.UNCRYPTED_EXTENSION = this.XML;
        this.ENCRYPTED_EXTENSION = String.literal("abd");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CommonDataFileStrings {
        return Inheritance.upcast(?*CommonDataFileStrings, CommonDataFileStrings.instance);
    }
};

