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
// package org.allbinary.input.automation.osgi

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Bundle = @import("org/osgi/framework/Bundle.zig").Bundle;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const InputAutomationBundleActivator = @import("bundle/input/automation/InputAutomationBundleActivator.zig").InputAutomationBundleActivator;
const BasicTextJDialog = @import("org/allbinary/gui/dialog/BasicTextJDialog.zig").BasicTextJDialog;

pub const DesktopBundle = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.osgi.DesktopBundle";
    bundle: ?*Bundle = null,
    const DESKTOP_SYMBOLIC_NAME: ?*String = String.literal("org.knopflerfish.bundle.desktop");

    fn initFields(this: *Self) void {
        this.bundle = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const bundleContext: ?*BundleContext = Inheritance.upcast(?*BundleContext, InputAutomationBundleActivator.getBundleContext());
        if (bundleContext != null) {
            const bundleArray: []?*Bundle = bundleContext.?.getBundles();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(bundleArray.len))) : (index += 1) {
                const bundle: ?*Bundle = Inheritance.upcast(?*Bundle, bundleArray[@intCast(index)]);
                const symbolicName: ?*String = Inheritance.upcast(?*String, bundle.?.getSymbolicName());
                if (Inheritance.call(symbolicName.?, "compareTo", .{ DesktopBundle.DESKTOP_SYMBOLIC_NAME }) == 0) {
                    this.bundle = bundle;
                }
                }
            }
        } else {
            const textJDialog: ?*JDialog = Inheritance.upcast(?*JDialog, Inheritance.callStatic(BasicTextJDialog, "create1", .{ String.literal("BundlContext is Null") }));
            _ = Inheritance.call(textJDialog.?, "setVisible", .{ true });
        }
        return this;
    }
    

    // throws Exception
    pub fn start(self: *Self) void {
        _ = self.bundle.?.start();
    }
};

