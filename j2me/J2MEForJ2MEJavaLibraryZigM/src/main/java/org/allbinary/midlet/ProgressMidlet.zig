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
// package org.allbinary.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ClientInformationFactory = @import("org/allbinary/logic/system/security/licensing/ClientInformationFactory.zig").ClientInformationFactory;
const PrimaryThreadPool = @import("org/allbinary/thread/PrimaryThreadPool.zig").PrimaryThreadPool;
const ThreadPool = @import("org/allbinary/thread/ThreadPool.zig").ThreadPool;
const AllBinaryMidlet = @import("org/allbinary/midlet/AllBinaryMidlet.zig").AllBinaryMidlet;
const ExitRunnable = @import("org/allbinary/midlet/ExitRunnable.zig").ExitRunnable;
const MidletExitProcessorFactory = @import("org/allbinary/midlet/MidletExitProcessorFactory.zig").MidletExitProcessorFactory;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

//J2MEForJ2ME
pub const ProgressMidlet = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.midlet.ProgressMidlet";
    base: AllBinaryMidlet = undefined,
    abeClientInformation: ?*AbeClientInformationInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(clientInformationFactory: ?*ClientInformationFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinaryMidlet.create().*;
        this.initFields();
        _ = this.preInit();
        this.abeClientInformation = Inheritance.upcast(@TypeOf(this.abeClientInformation), clientInformationFactory.?.getInstance());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn preInit(self: *Self) void {
        _ = self;
    }
    

    pub fn exitProgress(self: *Self, isProgress: bool) void {
        const processor: ?*Processor = Inheritance.upcast(?*Processor, Inheritance.call(MidletExitProcessorFactory.getInstance().?, "getExitInstance", .{ self }));
        { // try
            const primaryThreadPool: ?*ThreadPool = Inheritance.upcast(?*ThreadPool, PrimaryThreadPool.getInstance());
            const runnable: ?*Runnable = Inheritance.upcast(?*Runnable, Inheritance.callStatic(ExitRunnable, "create3", .{ self, processor, isProgress }));
            _ = Inheritance.call(primaryThreadPool.?, "runTask", .{ runnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("exit"), e });
//             { // try
//                 _ = processor.?.process();
//             }
//             // catch (Exception e2):
// //                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("exit"), e });
    }
};

