package com.yc.s2plyqnzf.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * <p>
 * 青鸟租房-地区表-1006
 * </p>
 *
 * @author yc
 * @since 2022-09-03
 */
@TableName("qnzf_district")
public class District implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 编号: 自增列
     */
        @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      /**
     * 地区名
     */
      private String name;

    
    public Integer getId() {
        return id;
    }

      public void setId(Integer id) {
          this.id = id;
      }
    
    public String getName() {
        return name;
    }

      public void setName(String name) {
          this.name = name;
      }

    @Override
    public String toString() {
        return "District{" +
              "id=" + id +
                  ", name=" + name +
              "}";
    }
}
