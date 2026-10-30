//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
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
// package org.allbinary.bundle.logic.system.loader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const Globals = @import("org/allbinary/globals/Globals.zig").Globals;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const BasicTextJDialog = @import("org/allbinary/gui/dialog/BasicTextJDialog.zig").BasicTextJDialog;
const ExitCloseListener = @import("org/allbinary/gui/dialog/ExitCloseListener.zig").ExitCloseListener;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbCryptUtil = @import("org/allbinary/logic/system/security/AbCryptUtil.zig").AbCryptUtil;
const AbKeys = @import("org/allbinary/logic/system/security/AbKeys.zig").AbKeys;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const AbeLicenseInterface = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterface.zig").AbeLicenseInterface;
const AbeLicenseInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterfaceFactory.zig").AbeLicenseInterfaceFactory;
const AbeNoLicense = @import("org/allbinary/logic/system/security/licensing/AbeNoLicense.zig").AbeNoLicense;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const CryptService = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.bundle.logic.system.loader.CryptService";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    abCryptUtil: ?*AbCryptUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.abCryptUtil = Inheritance.upcast(?*AbCryptUtil, AbCryptUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(Globals.getInstance().?, "init", .{ Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(this).?.class))).?, "getClassLoader").getClassLoader(), String.literal("./") });
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Set Globals: "), URLGLOBALS.getWebappPath()), this, this.commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    pub fn getDecryptedInputStream(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, name: ?*String, inputStream: ?*InputStream) ?*InputStream {
        { // try
            const key: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbKeys.getInstance().?, "getKey", .{ abeClientInformation, name }));
            const decrypted: []i8 = Inheritance.call(self.abCryptUtil.?, "decrypt", .{ inputStream, key });
            return Inheritance.upcast(?*InputStream, Inheritance.callStatic(ByteArrayInputStream, "create1", .{ decrypted }));
        }
        // catch (LicensingException e):
//             _ = Inheritance.call(self, "showLicenseDialog", .{ abeClientInformation, e });
        // catch (Exception e):
//             _ = Inheritance.call(self, "showLicenseDialog", .{ abeClientInformation, e });
        return null;
    }
    

    pub fn showLicenseDialog(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, e: ?anyerror) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e });
            const basicTextJDialog: ?*BasicTextJDialog = Inheritance.callStatic(BasicTextJDialog, "create1", .{ String.fromBytes(@errorName(e.?)) });
            { // try
                const abeLicenseInterface: ?*AbeLicenseInterface = Inheritance.upcast(?*AbeLicenseInterface, Inheritance.call(AbeLicenseInterfaceFactory.getInstance().?, "getLicenseInstance", .{ abeClientInformation }));
                if (!Object.same(abeLicenseInterface, AbeNoLicense.getInstance())) {
                    if (abeLicenseInterface.?.isValid()) {
                        _ = Inheritance.call(basicTextJDialog.?, "setText", .{ String.literal("Subscription Invalid") });
                    }
                }
            }
            // catch (LicensingException e2):
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e2 });
            _ = Inheritance.call(basicTextJDialog.?, "addCloseListener", .{ ExitCloseListener.create() });
            _ = Inheritance.call(basicTextJDialog.?, "setVisible", .{ true });
        }
        // catch (Exception e3):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e3 });
    }
};

