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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const FileWrapperUtil = @import("org/allbinary/logic/io/file/FileWrapperUtil.zig").FileWrapperUtil;
const ImagePersistanceUtil = @import("org/allbinary/media/image/ImagePersistanceUtil.zig").ImagePersistanceUtil;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const ImageProcessorInputCompositeInterface = @import("org/allbinary/media/image/ImageProcessorInputCompositeInterface.zig").ImageProcessorInputCompositeInterface;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;
const Float = @import("java/lang/Float.zig").Float;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const ResizeImageJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.ResizeImageJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageProcessorInput: ?*ImageProcessorInput = null,
    aboveJButton: ?*JButton = null,
    adjustFor16AboveJButton: ?*JButton = null,
    adjustFor16BelowJButton: ?*JButton = null,
    floatPercentJTextField: ?*JTextField = null,
    jComboBox1: ?*JComboBox = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    jLabel3: ?*JLabel = null,
    jTextField1: ?*JTextField = null,
    jTextField2: ?*JTextField = null,
    updateJButton: ?*JButton = null,
    // Implements ImageProcessorInputCompositeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.aboveJButton = null;
        this.adjustFor16AboveJButton = null;
        this.adjustFor16BelowJButton = null;
        this.floatPercentJTextField = null;
        this.jComboBox1 = null;
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.jLabel3 = null;
        this.jTextField1 = null;
        this.jTextField2 = null;
        this.updateJButton = null;
    }
    

    pub fn create1(imageProcessorInput: ?*ImageProcessorInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JPanel, "create", .{  }).*;
        this.initFields();
        _ = this.initComponents();
        this.imageProcessorInput = imageProcessorInput;
        const numberStringArray: []?*String = array_N66103: { const array_N66103_array = allocator.alloc(?*String, @intCast(101)) catch unreachable; @memset(array_N66103_array, null); break :array_N66103 array_N66103_array; };
        numberStringArray[@intCast(0)] = Inheritance.upcast(@TypeOf(numberStringArray[@intCast(0)]), String.valueOf(-1));
        {
            var index: i32 = 1;
            while (index < 100) : (index += 1) {
            numberStringArray[@intCast(index)] = Inheritance.upcast(@TypeOf(numberStringArray[@intCast(index)]), String.valueOf(index));
            }
        }
        _ = Inheritance.call(this.jComboBox1.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ numberStringArray }) });
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
//                     const percent: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.cast(?*String, self.jComboBox1.?.getSelectedItem()) }));
//                     const percentAsFloat: ?*Float = Inheritance.upcast(?*Float, (std.fmt.parseFloat(f32, self.floatPercentJTextField.?.getText().?.bytes) catch @panic("java.lang.NumberFormatException")));
//                     const imageProcessorInput: ?*ImageProcessorInput = Inheritance.upcast(?*ImageProcessorInput, self.getImageProcessorInput());
//                     const files: []?*File = imageProcessorInput.?.getFiles();
//                     var generatedBufferedImageArray: []?*BufferedImage = null;
//                     if (percentAsFloat.?.intValue() != -1) {
//                         generatedBufferedImageArray = Inheritance.upcast(@TypeOf(generatedBufferedImageArray), Inheritance.call(imageUtil.?, "createBufferedImage2", .{ imageProcessorInput.?.getBufferedImageArray(), percentAsFloat, true }));
//                     } else if (percent.?.intValue() != -1) {
//                         generatedBufferedImageArray = Inheritance.upcast(@TypeOf(generatedBufferedImageArray), Inheritance.call(imageUtil.?, "createBufferedImageForResize", .{ imageProcessorInput.?.getBufferedImageArray(), percent, true }));
//                     } else {
//                         const width: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.cast(?*String, self.jTextField1.?.getText()) }));
//                         const height: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.cast(?*String, self.jTextField2.?.getText()) }));
//                         generatedBufferedImageArray = Inheritance.upcast(@TypeOf(generatedBufferedImageArray), Inheritance.call(imageUtil.?, "createBufferedImage3", .{ imageProcessorInput.?.getBufferedImageArray(), width, height, true }));
//                     }
//                     const araster: ?*Raster = Inheritance.upcast(?*Raster, generatedBufferedImageArray[@intCast(0)].?.getAlphaRaster());
//                     if (araster == null) {
//                         _ = std.debug.print("{s}\n", .{String.text(String.literal("No Alpha Channel In Result"))});
//                     } else {
//                         _ = std.debug.print("{s}\n", .{String.text(String.literal("Found Alpha Channel In Result"))});
//                     }
//                     const imagePersistanceUtil: ?*ImagePersistanceUtil = Inheritance.upcast(?*ImagePersistanceUtil, ImagePersistanceUtil.getInstance());
//                     {
//                         var index: i32 = 0;
//                         while (index < @as(i32, @intCast(generatedBufferedImageArray.len))) : (index += 1) {
//                         _ = Inheritance.call(imagePersistanceUtil.?, "saveWithBatik", .{ Inheritance.callStatic(FileWrapperUtil, "wrapFile", .{ files[@intCast(index)] }), generatedBufferedImageArray[@intCast(index)] });
//                         }
//                     }
//                     _ = Inheritance.receiverOf(Inheritance.receiver(self, "getParent").getParent().?, "repaint").repaint();
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
//             }
.start();
    }
    

    pub fn update(self: *Self) void {
        _ = Thread.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                 { // try
//                     const imageProcessorInput: ?*ImageProcessorInput = Inheritance.upcast(?*ImageProcessorInput, self.getImageProcessorInput());
//                     const size: i32 = @as(i32, @intCast(imageProcessorInput.?.getBufferedImageArray().len));
//                     const bufferedImageArray: []?*BufferedImage = imageProcessorInput.?.getBufferedImageArray();
//                     var bufferedImage: ?*BufferedImage = null;
//                     {
//                         var index: i32 = 0;
//                         while (index < size) : (index += 1) {
//                         bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(0)]);
//                         _ = Inheritance.call(self.jTextField1.?, "setText", .{ String.valueOf(bufferedImage.?.getWidth()) });
//                         _ = Inheritance.call(self.jTextField2.?, "setText", .{ String.valueOf(bufferedImage.?.getHeight()) });
//                         }
//                     }
//                     _ = Inheritance.receiverOf(Inheritance.receiver(self, "getParent").getParent().?, "repaint").repaint();
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
//             }
.start();
    }
    

    pub fn updateFor16Above(self: *Self) void {
        _ = Thread.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                 { // try
//                     const imageProcessorInput: ?*ImageProcessorInput = Inheritance.upcast(?*ImageProcessorInput, self.getImageProcessorInput());
//                     const size: i32 = @as(i32, @intCast(imageProcessorInput.?.getBufferedImageArray().len));
//                     const bufferedImageArray: []?*BufferedImage = imageProcessorInput.?.getBufferedImageArray();
//                     var bufferedImage: ?*BufferedImage = null;
//                     {
//                         var index: i32 = 0;
//                         while (index < size) : (index += 1) {
//                         bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(0)]);
//                         _ = Inheritance.call(self.jTextField1.?, "setText", .{ String.valueOf((divide_N69161: { const left_N69161 = bufferedImage.?.getWidth(); const right_N69161 = 16; break :divide_N69161 if (comptime @typeInfo(@TypeOf(left_N69161)) == .int or @TypeOf(left_N69161) == comptime_int) @divTrunc(left_N69161, right_N69161) else left_N69161 / right_N69161; }) * 16) });
//                         _ = Inheritance.call(self.jTextField2.?, "setText", .{ String.valueOf((divide_N69245: { const left_N69245 = bufferedImage.?.getHeight(); const right_N69245 = 16; break :divide_N69245 if (comptime @typeInfo(@TypeOf(left_N69245)) == .int or @TypeOf(left_N69245) == comptime_int) @divTrunc(left_N69245, right_N69245) else left_N69245 / right_N69245; }) * 16) });
//                         }
//                     }
//                     _ = Inheritance.receiverOf(Inheritance.receiver(self, "getParent").getParent().?, "repaint").repaint();
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
//             }
.start();
    }
    

    pub fn updateFor16Below(self: *Self) void {
        _ = Thread.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                 { // try
//                     const imageProcessorInput: ?*ImageProcessorInput = Inheritance.upcast(?*ImageProcessorInput, self.getImageProcessorInput());
//                     const size: i32 = @as(i32, @intCast(imageProcessorInput.?.getBufferedImageArray().len));
//                     const bufferedImageArray: []?*BufferedImage = imageProcessorInput.?.getBufferedImageArray();
//                     var bufferedImage: ?*BufferedImage = null;
//                     {
//                         var index: i32 = 0;
//                         while (index < size) : (index += 1) {
//                         bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(0)]);
//                         _ = Inheritance.call(self.jTextField1.?, "setText", .{ String.valueOf((((divide_N69906: { const left_N69906 = bufferedImage.?.getWidth(); const right_N69906 = 16; break :divide_N69906 if (comptime @typeInfo(@TypeOf(left_N69906)) == .int or @TypeOf(left_N69906) == comptime_int) @divTrunc(left_N69906, right_N69906) else left_N69906 / right_N69906; })) + 1) * 16) });
//                         _ = Inheritance.call(self.jTextField2.?, "setText", .{ String.valueOf((((divide_N70007: { const left_N70007 = bufferedImage.?.getHeight(); const right_N70007 = 16; break :divide_N70007 if (comptime @typeInfo(@TypeOf(left_N70007)) == .int or @TypeOf(left_N70007) == comptime_int) @divTrunc(left_N70007, right_N70007) else left_N70007 / right_N70007; })) + 1) * 16) });
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
        self.jLabel1 = JLabel.create();
        self.jComboBox1 = JComboBox.create();
        self.aboveJButton = JButton.create();
        self.jTextField1 = JTextField.create();
        self.jLabel2 = JLabel.create();
        self.jLabel3 = JLabel.create();
        self.jTextField2 = JTextField.create();
        self.updateJButton = JButton.create();
        self.floatPercentJTextField = JTextField.create();
        self.adjustFor16AboveJButton = JButton.create();
        self.adjustFor16BelowJButton = JButton.create();
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Percent:") });
        _ = Inheritance.call(self.jComboBox1.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ @constCast(&[_]?*String{ String.literal("Item 1"), String.literal("Item 2"), String.literal("Item 3"), String.literal("Item 4") })[0..] }) });
        _ = Inheritance.call(self.aboveJButton.?, "setText", .{ String.literal("Process") });
        _ = Inheritance.call(self.aboveJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "aboveJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Width:") });
        _ = Inheritance.call(self.jLabel3.?, "setText", .{ String.literal("Height:") });
        _ = Inheritance.call(self.updateJButton.?, "setText", .{ String.literal("Update") });
        _ = Inheritance.call(self.updateJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "updateJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.floatPercentJTextField.?, "setText", .{ String.literal("-1.000000") });
        _ = Inheritance.call(self.floatPercentJTextField.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 120, 22 }) });
        _ = Inheritance.call(self.adjustFor16AboveJButton.?, "setText", .{ String.literal("Adjust for 16 Above") });
        _ = Inheritance.call(self.adjustFor16AboveJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "adjustFor16AboveJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.adjustFor16BelowJButton.?, "setText", .{ String.literal("Adjust for 16 Below") });
        _ = Inheritance.call(self.adjustFor16BelowJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "adjustFor16BelowJButtonActionPerformed", .{ evt });
//             }
 });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.jLabel3 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, false }).?, "addComponent", .{ self.jComboBox1, 0, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jTextField1 }).?, "addComponent", .{ self.jTextField2 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.UNRELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.floatPercentJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.adjustFor16AboveJButton }).?, "addComponent", .{ self.adjustFor16BelowJButton }) }).?, "addContainerGap", .{ javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.updateJButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.aboveJButton }).?, "addGap", .{ 0, 250, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.jComboBox1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.floatPercentJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jTextField1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.adjustFor16AboveJButton }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel3 }).?, "addComponent", .{ self.jTextField2, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.adjustFor16BelowJButton }) }).?, "addGap", .{ 18, 18, 18 }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.aboveJButton }).?, "addComponent", .{ self.updateJButton }) }).?, "addContainerGap", .{ 175, @as(i16, std.math.maxInt(i16)) }) }) });
    }
    

    pub fn aboveJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.process();
    }
    

    pub fn updateJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.update();
    }
    

    pub fn adjustFor16AboveJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.updateFor16Above();
    }
    

    pub fn adjustFor16BelowJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.updateFor16Below();
    }
};

