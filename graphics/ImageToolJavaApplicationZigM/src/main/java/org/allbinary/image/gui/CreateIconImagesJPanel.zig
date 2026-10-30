// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.image.gui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const Raster = @import("java/awt/image/Raster.zig").Raster;
const File = @import("java/io/File.zig").File;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ImagePersistanceUtil = @import("org/allbinary/media/image/ImagePersistanceUtil.zig").ImagePersistanceUtil;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const ImageProcessorInputCompositeInterface = @import("org/allbinary/media/image/ImageProcessorInputCompositeInterface.zig").ImageProcessorInputCompositeInterface;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const CreateIconImagesJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.CreateIconImagesJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageProcessorInput: ?*ImageProcessorInput = null,
    aboveJButton: ?*JButton = null,
    // Implements ImageProcessorInputCompositeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.aboveJButton = null;
    }
    

    pub fn create1(imageProcessorInput: ?*ImageProcessorInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JPanel, "create", .{  }).*;
        this.initFields();
        _ = this.initComponents();
        this.imageProcessorInput = imageProcessorInput;
        const numberStringArray: []?*String = array_N66213: { const array_N66213_array = allocator.alloc(?*String, @intCast(101)) catch unreachable; @memset(array_N66213_array, null); break :array_N66213 array_N66213_array; };
        numberStringArray[@intCast(0)] = Inheritance.upcast(@TypeOf(numberStringArray[@intCast(0)]), String.valueOf(-1));
        {
            var index: i32 = 1;
            while (index < 100) : (index += 1) {
            numberStringArray[@intCast(index)] = Inheritance.upcast(@TypeOf(numberStringArray[@intCast(index)]), String.valueOf(index));
            }
        }
        const araster: ?*Raster = Inheritance.upcast(?*Raster, Inheritance.receiverOf(this.imageProcessorInput.?.getBufferedImageArray()[@intCast(0)].?, "getAlphaRaster").getAlphaRaster());
        if (araster == null) {
            _ = std.debug.print("{s}\n", .{String.text(String.literal("there is no Alpha channel!!!!!!!!!"))});
        } else {
            _ = std.debug.print("{s}\n", .{String.text(String.literal("Alpha channel found !"))});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self) void {
        _ = Thread.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                 { // try
//                     const imageUtil: ?*ImageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
//                     const stringMaker: ?*StringMaker = StringMaker.create();
//                     const imageProcessorInput: ?*ImageProcessorInput = Inheritance.upcast(?*ImageProcessorInput, self.getImageProcessorInput());
//                     const files: []?*File = imageProcessorInput.?.getFiles();
//                     const iconWidthList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
//                     const iconHeightList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
//                     _ = Inheritance.call(iconWidthList.?, "add", .{ 864 });
//                     _ = Inheritance.call(iconHeightList.?, "add", .{ 864 });
//                     const ANDROID: ?*String = String.literal("android-icon-");
//                     const IOS: ?*String = String.literal("ios-icon-");
//                     const size: i32 = iconWidthList.?.size();
//                     var width: i32 = 0;
//                     var height: i32 = 0;
//                     {
//                         var index2: i32 = 0;
//                         while (index2 < size) : (index2 += 1) {
//                         width = Inheritance.receiverOf((Inheritance.cast(?*Integer, Inheritance.call(iconWidthList.?, "get", .{ index2 }))).?, "intValue").intValue();
//                         height = Inheritance.receiverOf((Inheritance.cast(?*Integer, Inheritance.call(iconHeightList.?, "get", .{ index2 }))).?, "intValue").intValue();
//                         const generatedBufferedImageArray: []?*BufferedImage = Inheritance.call(imageUtil.?, "createBufferedImage3", .{ imageProcessorInput.?.getBufferedImageArray(), width, height, true });
//                         const imagePersistanceUtil: ?*ImagePersistanceUtil = Inheritance.upcast(?*ImagePersistanceUtil, ImagePersistanceUtil.getInstance());
//                         {
//                             var index: i32 = 0;
//                             while (index < @as(i32, @intCast(generatedBufferedImageArray.len))) : (index += 1) {
//                             const filePath: ?*String = Inheritance.upcast(?*String, files[@intCast(index)].?.getAbsolutePath());
//                             const endIndex: i32 = Inheritance.call(filePath.?, "lastIndexOf", .{ '\\' });
//                             const path: ?*String = Inheritance.upcast(?*String, filePath.?.substring2(0, endIndex + 1));
//                             _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
//                             _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ path }).?, "append", .{ ANDROID }).?, "appendint", .{ width }).?, "append", .{ CanvasStrings.getInstance().?._PNG });
//                             var newFilePath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringMaker)));
//                             _ = Inheritance.call(imagePersistanceUtil.?, "saveWithBatik", .{ Inheritance.callStatic(AbFile, "createAbFile", .{ newFilePath }), generatedBufferedImageArray[@intCast(index)] });
//                             _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
//                             _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ path }).?, "append", .{ IOS }).?, "appendint", .{ width }).?, "append", .{ CanvasStrings.getInstance().?._PNG });
//                             newFilePath = Inheritance.upcast(@TypeOf(newFilePath), Object.toString(Object.of(stringMaker)));
//                             _ = Inheritance.call(imagePersistanceUtil.?, "saveWithBatik", .{ Inheritance.callStatic(AbFile, "createAbFile", .{ newFilePath }), generatedBufferedImageArray[@intCast(index)] });
//                             }
//                         }
//                         }
//                     }
//                     _ = Inheritance.receiverOf(Inheritance.receiver(self, "getParent").getParent().?, "repaint").repaint();
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
//             }
.start();
    }
    

    pub fn getImageProcessorInput(self: *Self) ?*ImageProcessorInput {
        return self.imageProcessorInput;
    }
    

    pub fn setImageProcessorInput(self: *Self, imageProcessorInput: ?*ImageProcessorInput) void {
        self.imageProcessorInput = imageProcessorInput;
    }
    

    pub fn initComponents(self: *Self) void {
        self.aboveJButton = JButton.create();
        _ = Inheritance.call(self.aboveJButton.?, "setText", .{ String.literal("Process") });
        _ = Inheritance.call(self.aboveJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "aboveJButtonActionPerformed", .{ evt });
//             }
 });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.aboveJButton }).?, "addGap", .{ 0, 335, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.aboveJButton }).?, "addContainerGap", .{ 286, @as(i16, std.math.maxInt(i16)) }) }) });
    }
    

    pub fn aboveJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.process();
    }
};

